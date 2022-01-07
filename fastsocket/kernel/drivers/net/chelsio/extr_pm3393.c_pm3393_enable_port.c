
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac_statistics {int dummy; } ;
struct cmac {int adapter; int stats; } ;


 int SUNI1x10GEXP_BITMSK_MSTAT_CLEAR ;
 int SUNI1x10GEXP_REG_MSTAT_CONTROL ;
 int memset (int *,int ,int) ;
 int pm3393_enable (struct cmac*,int) ;
 int pmwrite (struct cmac*,int ,int ) ;
 int t1_link_changed (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pm3393_enable_port(struct cmac *cmac, int which)
{

 pmwrite(cmac, SUNI1x10GEXP_REG_MSTAT_CONTROL,
  SUNI1x10GEXP_BITMSK_MSTAT_CLEAR);
 udelay(2);
 memset(&cmac->stats, 0, sizeof(struct cmac_statistics));

 pm3393_enable(cmac, which);






 t1_link_changed(cmac->adapter, 0);
 return 0;
}
