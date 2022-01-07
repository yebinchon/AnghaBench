
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {int dummy; } ;


 int HIFN_0_PUIER ;
 int HIFN_1_DMA_CSR ;
 int HIFN_1_DMA_IER ;
 int HIFN_DMACSR_C_CTRL_DIS ;
 int HIFN_DMACSR_D_CTRL_DIS ;
 int HIFN_DMACSR_R_CTRL_DIS ;
 int HIFN_DMACSR_S_CTRL_DIS ;
 int hifn_write_0 (struct hifn_device*,int ,int ) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;

__attribute__((used)) static void hifn_stop_device(struct hifn_device *dev)
{
 hifn_write_1(dev, HIFN_1_DMA_CSR,
  HIFN_DMACSR_D_CTRL_DIS | HIFN_DMACSR_R_CTRL_DIS |
  HIFN_DMACSR_S_CTRL_DIS | HIFN_DMACSR_C_CTRL_DIS);
 hifn_write_0(dev, HIFN_0_PUIER, 0);
 hifn_write_1(dev, HIFN_1_DMA_IER, 0);
}
