
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_vcpu ;
 int * percpu_read (int ) ;

int kvm_is_in_guest(void)
{
 return percpu_read(current_vcpu) != ((void*)0);
}
