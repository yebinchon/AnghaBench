
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_cpl ) (scalar_t__) ;} ;


 int current_vcpu ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ percpu_read (int ) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static int kvm_is_user_mode(void)
{
 int user_mode = 3;

 if (percpu_read(current_vcpu))
  user_mode = kvm_x86_ops->get_cpl(percpu_read(current_vcpu));

 return user_mode != 0;
}
