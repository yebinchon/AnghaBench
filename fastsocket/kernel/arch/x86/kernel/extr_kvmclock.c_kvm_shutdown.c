
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_disable_steal_time () ;
 int msr_kvm_system_time ;
 int native_machine_shutdown () ;
 int native_write_msr (int ,int ,int ) ;

__attribute__((used)) static void kvm_shutdown(void)
{
 native_write_msr(msr_kvm_system_time, 0, 0);
 kvm_disable_steal_time();
 native_machine_shutdown();
}
