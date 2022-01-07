
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CIR_IREN ;
 int CIR_IREN_PE ;
 int CIR_IREN_RTR ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;

__attribute__((used)) static void nvt_set_cir_iren(struct nvt_dev *nvt)
{
 u8 iren;

 iren = CIR_IREN_RTR | CIR_IREN_PE;
 nvt_cir_reg_write(nvt, iren, CIR_IREN);
}
