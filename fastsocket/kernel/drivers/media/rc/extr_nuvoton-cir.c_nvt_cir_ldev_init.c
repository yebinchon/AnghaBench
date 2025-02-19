
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int cir_addr; int cir_irq; } ;


 int CR_CIR_BASE_ADDR_HI ;
 int CR_CIR_BASE_ADDR_LO ;
 int CR_CIR_IRQ_RSRC ;
 int CR_LOGICAL_DEV_EN ;
 int CR_OUTPUT_PIN_SEL ;
 int LOGICAL_DEV_CIR ;
 int LOGICAL_DEV_ENABLE ;
 int OUTPUT_ENABLE_CIR ;
 int OUTPUT_ENABLE_CIRWB ;
 int OUTPUT_PIN_SEL_MASK ;
 int nvt_cr_read (struct nvt_dev*,int ) ;
 int nvt_cr_write (struct nvt_dev*,int,int ) ;
 int nvt_dbg (char*,int,int) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;

__attribute__((used)) static void nvt_cir_ldev_init(struct nvt_dev *nvt)
{
 u8 val;


 val = nvt_cr_read(nvt, CR_OUTPUT_PIN_SEL);
 val &= OUTPUT_PIN_SEL_MASK;
 val |= (OUTPUT_ENABLE_CIR | OUTPUT_ENABLE_CIRWB);
 nvt_cr_write(nvt, val, CR_OUTPUT_PIN_SEL);


 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR);
 nvt_cr_write(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

 nvt_cr_write(nvt, nvt->cir_addr >> 8, CR_CIR_BASE_ADDR_HI);
 nvt_cr_write(nvt, nvt->cir_addr & 0xff, CR_CIR_BASE_ADDR_LO);

 nvt_cr_write(nvt, nvt->cir_irq, CR_CIR_IRQ_RSRC);

 nvt_dbg("CIR initialized, base io port address: 0x%lx, irq: %d",
  nvt->cir_addr, nvt->cir_irq);
}
