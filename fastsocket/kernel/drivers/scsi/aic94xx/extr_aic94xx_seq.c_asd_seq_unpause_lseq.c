
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;


 int ASD_DPRINTK (char*,int) ;
 int EPAUSE ;
 int LmARP2CTL (int) ;
 int PAUSED ;
 int PAUSE_DELAY ;
 int PAUSE_TRIES ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static int asd_seq_unpause_lseq(struct asd_ha_struct *asd_ha, int lseq)
{
 u32 arp2ctl;
 int count = PAUSE_TRIES;

 arp2ctl = asd_read_reg_dword(asd_ha, LmARP2CTL(lseq));
 if (!(arp2ctl & PAUSED))
  return 0;

 asd_write_reg_dword(asd_ha, LmARP2CTL(lseq), arp2ctl & ~EPAUSE);
 do {
  arp2ctl = asd_read_reg_dword(asd_ha, LmARP2CTL(lseq));
  if (!(arp2ctl & PAUSED))
   return 0;
  udelay(PAUSE_DELAY);
 } while (--count > 0);

 ASD_DPRINTK("couldn't unpause LSEQ %d\n", lseq);
 return 0;
}
