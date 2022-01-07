
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_IRCON ;
 int CIR_IRCON_RXEN ;
 int CIR_IRCON_RXINV ;
 int CIR_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_IRCON_TXEN ;
 int CIR_IRSTS ;
 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_CIR ;
 int LOGICAL_DEV_ENABLE ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_cr_write (struct nvt_dev*,int ,int ) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int nvt_set_cir_iren (struct nvt_dev*) ;

__attribute__((used)) static void nvt_enable_cir(struct nvt_dev *nvt)
{

 nvt_cir_reg_write(nvt, CIR_IRCON_TXEN | CIR_IRCON_RXEN |
     CIR_IRCON_RXINV | CIR_IRCON_SAMPLE_PERIOD_SEL,
     CIR_IRCON);

 nvt_efm_enable(nvt);


 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR);
 nvt_cr_write(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

 nvt_efm_disable(nvt);


 nvt_cir_reg_write(nvt, 0xff, CIR_IRSTS);


 nvt_set_cir_iren(nvt);
}
