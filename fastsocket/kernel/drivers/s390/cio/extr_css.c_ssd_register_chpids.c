
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_ssd_info {int path_mask; int * chpid; } ;


 int chp_is_registered (int ) ;
 int chp_new (int ) ;

__attribute__((used)) static void ssd_register_chpids(struct chsc_ssd_info *ssd)
{
 int i;
 int mask;

 for (i = 0; i < 8; i++) {
  mask = 0x80 >> i;
  if (ssd->path_mask & mask)
   if (!chp_is_registered(ssd->chpid[i]))
    chp_new(ssd->chpid[i]);
 }
}
