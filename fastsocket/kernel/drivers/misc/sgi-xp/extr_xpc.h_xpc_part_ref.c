
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {scalar_t__ setup_state; int references; } ;


 scalar_t__ XPC_P_SS_SETUP ;
 int atomic_inc (int *) ;
 int xpc_part_deref (struct xpc_partition*) ;

__attribute__((used)) static inline int
xpc_part_ref(struct xpc_partition *part)
{
 int setup;

 atomic_inc(&part->references);
 setup = (part->setup_state == XPC_P_SS_SETUP);
 if (!setup)
  xpc_part_deref(part);

 return setup;
}
