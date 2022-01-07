
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;


 int ASD_DPRINTK (char*) ;
 int CARP2CTL ;
 int EPAUSE ;
 int PAUSED ;
 int PAUSE_DELAY ;
 int PAUSE_TRIES ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static int asd_unpause_cseq(struct asd_ha_struct *asd_ha)
{
 u32 arp2ctl;
 int count = PAUSE_TRIES;

 arp2ctl = asd_read_reg_dword(asd_ha, CARP2CTL);
 if (!(arp2ctl & PAUSED))
  return 0;

 asd_write_reg_dword(asd_ha, CARP2CTL, arp2ctl & ~EPAUSE);
 do {
  arp2ctl = asd_read_reg_dword(asd_ha, CARP2CTL);
  if (!(arp2ctl & PAUSED))
   return 0;
  udelay(PAUSE_DELAY);
 } while (--count > 0);

 ASD_DPRINTK("couldn't unpause the CSEQ\n");
 return -1;
}
