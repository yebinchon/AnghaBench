
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct TYPE_2__ {int psc_smbstat; int psc_smbpcr; unsigned int psc_smbtxrx; int psc_smbevnt; } ;
typedef TYPE_1__ psc_smb_t ;


 int EIO ;
 int PSC_SMBEVNT_ALLCLR ;
 int PSC_SMBPCR_DC ;
 int PSC_SMBPCR_MS ;
 int PSC_SMBSTAT_RE ;
 int PSC_SMBSTAT_TE ;
 unsigned int PSC_SMBTXRX_STP ;
 int au_sync () ;
 int udelay (int) ;
 scalar_t__ wait_ack (struct i2c_au1550_data*) ;
 int wait_master_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int
do_address(struct i2c_au1550_data *adap, unsigned int addr, int rd, int q)
{
 volatile psc_smb_t *sp;
 u32 stat;

 sp = (volatile psc_smb_t *)(adap->psc_base);



 stat = sp->psc_smbstat;
 sp->psc_smbevnt = PSC_SMBEVNT_ALLCLR;
 au_sync();

 if (!(stat & PSC_SMBSTAT_TE) || !(stat & PSC_SMBSTAT_RE)) {
  sp->psc_smbpcr = PSC_SMBPCR_DC;
  au_sync();
  do {
   stat = sp->psc_smbpcr;
   au_sync();
  } while ((stat & PSC_SMBPCR_DC) != 0);
  udelay(50);
 }



 addr <<= 1;
 if (rd)
  addr |= 1;


 if (q)
  addr |= PSC_SMBTXRX_STP;



 sp->psc_smbtxrx = addr;
 au_sync();
 sp->psc_smbpcr = PSC_SMBPCR_MS;
 au_sync();
 if (wait_ack(adap))
  return -EIO;
 return (q) ? wait_master_done(adap) : 0;
}
