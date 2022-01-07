
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct poseidon_control {TYPE_1__ v4l2_ctrl; } ;
typedef scalar_t__ __u32 ;


 int ARRAY_SIZE (struct poseidon_control*) ;
 struct poseidon_control* controls ;

__attribute__((used)) static struct poseidon_control *check_control_id(__u32 id)
{
 struct poseidon_control *control = &controls[0];
 int array_size = ARRAY_SIZE(controls);

 for (; control < &controls[array_size]; control++)
  if (control->v4l2_ctrl.id == id)
   return control;
 return ((void*)0);
}
