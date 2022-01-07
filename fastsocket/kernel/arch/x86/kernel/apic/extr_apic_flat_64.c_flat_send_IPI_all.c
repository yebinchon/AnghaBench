
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_logical; } ;


 int APIC_DEST_ALLINC ;
 int NMI_VECTOR ;
 int __default_send_IPI_shortcut (int ,int,int ) ;
 TYPE_1__* apic ;
 int cpu_online_mask ;
 int flat_send_IPI_mask (int ,int) ;

__attribute__((used)) static void flat_send_IPI_all(int vector)
{
 if (vector == NMI_VECTOR) {
  flat_send_IPI_mask(cpu_online_mask, vector);
 } else {
  __default_send_IPI_shortcut(APIC_DEST_ALLINC,
         vector, apic->dest_logical);
 }
}
