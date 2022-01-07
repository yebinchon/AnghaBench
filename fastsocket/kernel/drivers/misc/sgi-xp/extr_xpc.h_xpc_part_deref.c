
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {scalar_t__ setup_state; int teardown_wq; int references; } ;
typedef scalar_t__ s32 ;


 int DBUG_ON (int) ;
 scalar_t__ XPC_P_SS_WTEARDOWN ;
 scalar_t__ atomic_dec_return (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
xpc_part_deref(struct xpc_partition *part)
{
 s32 refs = atomic_dec_return(&part->references);

 DBUG_ON(refs < 0);
 if (refs == 0 && part->setup_state == XPC_P_SS_WTEARDOWN)
  wake_up(&part->teardown_wq);
}
