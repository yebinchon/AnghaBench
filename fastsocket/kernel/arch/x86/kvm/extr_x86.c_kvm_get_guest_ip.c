
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_vcpu ;
 unsigned long kvm_rip_read (scalar_t__) ;
 scalar_t__ percpu_read (int ) ;

__attribute__((used)) static unsigned long kvm_get_guest_ip(void)
{
 unsigned long ip = 0;

 if (percpu_read(current_vcpu))
  ip = kvm_rip_read(percpu_read(current_vcpu));

 return ip;
}
