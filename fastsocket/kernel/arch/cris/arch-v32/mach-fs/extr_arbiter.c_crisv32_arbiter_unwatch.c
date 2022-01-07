
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct crisv32_watch_entry {int dummy; } ;
struct TYPE_6__ {void* bp3; void* bp2; void* bp0; } ;
typedef TYPE_1__ reg_marb_rw_intr_mask ;
struct TYPE_7__ {int used; } ;


 int EINVAL ;
 int NUMBER_OF_BP ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int arbiter_lock ;
 int crisv32_arbiter_init () ;
 int marb ;
 int memset (TYPE_2__*,int ,int) ;
 int regi_marb ;
 void* regk_marb_no ;
 int rw_intr_mask ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_2__* watches ;

int crisv32_arbiter_unwatch(int id)
{
 reg_marb_rw_intr_mask intr_mask = REG_RD(marb, regi_marb, rw_intr_mask);

 crisv32_arbiter_init();

 spin_lock(&arbiter_lock);

 if ((id < 0) || (id >= NUMBER_OF_BP) || (!watches[id].used)) {
  spin_unlock(&arbiter_lock);
  return -EINVAL;
 }

 memset(&watches[id], 0, sizeof(struct crisv32_watch_entry));

 if (id == 0)
  intr_mask.bp0 = regk_marb_no;
 else if (id == 1)
  intr_mask.bp2 = regk_marb_no;
 else if (id == 2)
  intr_mask.bp2 = regk_marb_no;
 else if (id == 3)
  intr_mask.bp3 = regk_marb_no;

 REG_WR(marb, regi_marb, rw_intr_mask, intr_mask);

 spin_unlock(&arbiter_lock);
 return 0;
}
