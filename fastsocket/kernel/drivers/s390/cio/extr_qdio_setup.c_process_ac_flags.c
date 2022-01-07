
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input; int output; int sync; int no_sync_ti; int no_sync_out_pci; int no_sync_out_ti; } ;
struct qdio_irq {TYPE_1__ siga_flag; } ;


 unsigned char AC1_AUTOMATIC_SYNC_ON_OUT_PCI ;
 unsigned char AC1_AUTOMATIC_SYNC_ON_THININT ;
 unsigned char AC1_SIGA_INPUT_NEEDED ;
 unsigned char AC1_SIGA_OUTPUT_NEEDED ;
 unsigned char AC1_SIGA_SYNC_NEEDED ;

__attribute__((used)) static void process_ac_flags(struct qdio_irq *irq_ptr, unsigned char qdioac)
{
 if (qdioac & AC1_SIGA_INPUT_NEEDED)
  irq_ptr->siga_flag.input = 1;
 if (qdioac & AC1_SIGA_OUTPUT_NEEDED)
  irq_ptr->siga_flag.output = 1;
 if (qdioac & AC1_SIGA_SYNC_NEEDED)
  irq_ptr->siga_flag.sync = 1;
 if (qdioac & AC1_AUTOMATIC_SYNC_ON_THININT)
  irq_ptr->siga_flag.no_sync_ti = 1;
 if (qdioac & AC1_AUTOMATIC_SYNC_ON_OUT_PCI)
  irq_ptr->siga_flag.no_sync_out_pci = 1;

 if (irq_ptr->siga_flag.no_sync_out_pci &&
     irq_ptr->siga_flag.no_sync_ti)
  irq_ptr->siga_flag.no_sync_out_ti = 1;
}
