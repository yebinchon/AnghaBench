
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int sdepb_lock; } ;


 int EPB_DATA_MASK ;
 unsigned long long EPB_IB_UC_CS_SHF ;
 int EPB_MADDRH ;
 int EPB_MADDRL ;
 unsigned long long EPB_PCIE_UC_CS_SHF ;
 int EPB_RD ;
 int EPB_ROMDATA ;
 int EPB_ROM_R ;
 int EPB_ROM_W ;
 int EPB_TRANS_RDY ;
 int EPB_TRANS_TRIES ;
 int EPB_UC_CTL ;



 int epb_access (struct qib_devdata*,int,int) ;
 int epb_trans (struct qib_devdata*,int ,int,int*) ;
 int kr_ibsd_epb_transaction_reg ;
 int kr_pciesd_epb_transaction_reg ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int qib_sd7220_ram_xfer(struct qib_devdata *dd, int sdnum, u32 loc,
          u8 *buf, int cnt, int rd_notwr)
{
 u16 trans;
 u64 transval;
 u64 csbit;
 int owned;
 int tries;
 int sofar;
 int addr;
 int ret;
 unsigned long flags;
 const char *op;


 switch (sdnum) {
 case 130:
  csbit = 1ULL << EPB_IB_UC_CS_SHF;
  trans = kr_ibsd_epb_transaction_reg;
  break;

 case 129:
 case 128:

  csbit = 1ULL << EPB_PCIE_UC_CS_SHF;
  trans = kr_pciesd_epb_transaction_reg;
  break;

 default:
  return -1;
 }

 op = rd_notwr ? "Rd" : "Wr";
 spin_lock_irqsave(&dd->cspec->sdepb_lock, flags);

 owned = epb_access(dd, sdnum, 1);
 if (owned < 0) {
  spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
  return -1;
 }
 addr = loc & 0x1FFF;
 for (tries = EPB_TRANS_TRIES; tries; --tries) {
  transval = qib_read_kreg32(dd, trans);
  if (transval & EPB_TRANS_RDY)
   break;
  udelay(5);
 }

 sofar = 0;
 if (tries > 0) {







  transval = csbit | EPB_UC_CTL |
   (rd_notwr ? EPB_ROM_R : EPB_ROM_W);
  tries = epb_trans(dd, trans, transval, &transval);
  while (tries > 0 && sofar < cnt) {
   if (!sofar) {

    int addrbyte = (addr + sofar) >> 8;
    transval = csbit | EPB_MADDRH | addrbyte;
    tries = epb_trans(dd, trans, transval,
        &transval);
    if (tries <= 0)
     break;
    addrbyte = (addr + sofar) & 0xFF;
    transval = csbit | EPB_MADDRL | addrbyte;
    tries = epb_trans(dd, trans, transval,
       &transval);
    if (tries <= 0)
     break;
   }

   if (rd_notwr)
    transval = csbit | EPB_ROMDATA | EPB_RD;
   else
    transval = csbit | EPB_ROMDATA | buf[sofar];
   tries = epb_trans(dd, trans, transval, &transval);
   if (tries <= 0)
    break;
   if (rd_notwr)
    buf[sofar] = transval & EPB_DATA_MASK;
   ++sofar;
  }

  transval = csbit | EPB_UC_CTL;
  tries = epb_trans(dd, trans, transval, &transval);
 }

 ret = sofar;

 if (epb_access(dd, sdnum, -1) < 0)
  ret = -1;

 spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
 if (tries <= 0)
  ret = -1;
 return ret;
}
