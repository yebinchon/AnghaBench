
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** rec_ctrl; int irq; } ;


 void* IO_STATE (void**,int ,int ) ;
 int * R_IRQ_MASK1_SET ;
 void** R_SERIAL0_REC_CTRL ;
 void** R_VECT_MASK_SET ;
 int enable ;
 TYPE_1__* kgdb_port ;
 int rec_enable ;
 int serial ;
 int set ;

void
enableDebugIRQ(void)
{
 if (!kgdb_port)
  return;

 *R_IRQ_MASK1_SET = kgdb_port->irq;



 *R_VECT_MASK_SET = IO_STATE(R_VECT_MASK_SET, serial, set);

 *kgdb_port->rec_ctrl = IO_STATE(R_SERIAL0_REC_CTRL, rec_enable, enable);
}
