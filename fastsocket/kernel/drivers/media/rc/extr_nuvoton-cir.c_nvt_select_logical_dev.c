
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int cr_efdr; int cr_efir; } ;


 int CR_LOGICAL_DEV_SEL ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void nvt_select_logical_dev(struct nvt_dev *nvt, u8 ldev)
{
 outb(CR_LOGICAL_DEV_SEL, nvt->cr_efir);
 outb(ldev, nvt->cr_efdr);
}
