
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int generation; } ;
struct r5conf {scalar_t__ reshape_progress; int generation; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ MaxSector ;
 int smp_rmb () ;

__attribute__((used)) static int use_new_offset(struct r5conf *conf, struct stripe_head *sh)
{
 sector_t progress = conf->reshape_progress;




 smp_rmb();
 if (progress == MaxSector)
  return 0;
 if (sh->generation == conf->generation - 1)
  return 0;



 return 1;
}
