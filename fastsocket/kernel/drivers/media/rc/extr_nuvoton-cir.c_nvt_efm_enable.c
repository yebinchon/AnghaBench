
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int cr_efir; } ;


 int EFER_EFM_ENABLE ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void nvt_efm_enable(struct nvt_dev *nvt)
{

 outb(EFER_EFM_ENABLE, nvt->cr_efir);
 outb(EFER_EFM_ENABLE, nvt->cr_efir);
}
