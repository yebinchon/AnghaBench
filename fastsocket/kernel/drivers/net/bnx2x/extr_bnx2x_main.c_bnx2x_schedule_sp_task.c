
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int sp_task; int interrupt_occurred; } ;


 int atomic_set (int *,int) ;
 int bnx2x_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) static int bnx2x_schedule_sp_task(struct bnx2x *bp)
{




 atomic_set(&bp->interrupt_occurred, 1);





 smp_wmb();


 return queue_delayed_work(bnx2x_wq, &bp->sp_task, 0);
}
