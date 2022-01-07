
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int cir_wake_addr; int cir_wake_irq; } ;


 int CIR_INTR_MOUSE_IRQ_BIT ;
 int CIR_WAKE_ENABLE_BIT ;
 int CR_ACPI_CIR_WAKE ;
 int CR_ACPI_IRQ_EVENTS ;
 int CR_ACPI_IRQ_EVENTS2 ;
 int CR_CIR_BASE_ADDR_HI ;
 int CR_CIR_BASE_ADDR_LO ;
 int CR_CIR_IRQ_RSRC ;
 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_ACPI ;
 int LOGICAL_DEV_CIR_WAKE ;
 int LOGICAL_DEV_ENABLE ;
 int PME_INTR_CIR_PASS_BIT ;
 int nvt_cr_write (struct nvt_dev*,int,int ) ;
 int nvt_dbg (char*,int,int) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int nvt_set_reg_bit (struct nvt_dev*,int ,int ) ;

__attribute__((used)) static void nvt_cir_wake_ldev_init(struct nvt_dev *nvt)
{

 nvt_select_logical_dev(nvt, LOGICAL_DEV_ACPI);
 nvt_cr_write(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);


 nvt_set_reg_bit(nvt, CIR_WAKE_ENABLE_BIT, CR_ACPI_CIR_WAKE);


 nvt_set_reg_bit(nvt, CIR_INTR_MOUSE_IRQ_BIT, CR_ACPI_IRQ_EVENTS);


 nvt_set_reg_bit(nvt, PME_INTR_CIR_PASS_BIT, CR_ACPI_IRQ_EVENTS2);


 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR_WAKE);
 nvt_cr_write(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

 nvt_cr_write(nvt, nvt->cir_wake_addr >> 8, CR_CIR_BASE_ADDR_HI);
 nvt_cr_write(nvt, nvt->cir_wake_addr & 0xff, CR_CIR_BASE_ADDR_LO);

 nvt_cr_write(nvt, nvt->cir_wake_irq, CR_CIR_IRQ_RSRC);

 nvt_dbg("CIR Wake initialized, base io port address: 0x%lx, irq: %d",
  nvt->cir_wake_addr, nvt->cir_wake_irq);
}
