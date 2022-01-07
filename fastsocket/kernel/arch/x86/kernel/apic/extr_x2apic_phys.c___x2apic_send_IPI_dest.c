
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __prepare_ICR (int ,int,unsigned int) ;
 int native_x2apic_icr_write (unsigned long,unsigned int) ;

__attribute__((used)) static void __x2apic_send_IPI_dest(unsigned int apicid, int vector,
       unsigned int dest)
{
 unsigned long cfg;

 cfg = __prepare_ICR(0, vector, dest);




 native_x2apic_icr_write(cfg, apicid);
}
