
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcw {int pim; int * chpid; } ;
struct chsc_ssd_info {int path_mask; TYPE_1__* chpid; } ;
struct TYPE_2__ {int id; } ;


 int chp_id_init (TYPE_1__*) ;
 int memset (struct chsc_ssd_info*,int ,int) ;

__attribute__((used)) static void ssd_from_pmcw(struct chsc_ssd_info *ssd, struct pmcw *pmcw)
{
 int i;
 int mask;

 memset(ssd, 0, sizeof(struct chsc_ssd_info));
 ssd->path_mask = pmcw->pim;
 for (i = 0; i < 8; i++) {
  mask = 0x80 >> i;
  if (pmcw->pim & mask) {
   chp_id_init(&ssd->chpid[i]);
   ssd->chpid[i].id = pmcw->chpid[i];
  }
 }
}
