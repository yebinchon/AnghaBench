
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int dummy; } ;
typedef int ssize_t ;


 int CAM ;
 int CNTL ;
 int EMU_FAULT_AD ;
 int FAULT_AD ;
 int FLUSH_ENTRY ;
 int GFLUSH ;
 int IRQENABLE ;
 int IRQSTATUS ;
 int LD_TLB ;
 int LOCK ;
 int RAM ;
 int READ_CAM ;
 int READ_RAM ;
 int REVISION ;
 int SYSCONFIG ;
 int SYSSTATUS ;
 int TTB ;
 int WALKING_ST ;
 int pr_reg (int ) ;

__attribute__((used)) static ssize_t omap2_iommu_dump_ctx(struct iommu *obj, char *buf, ssize_t len)
{
 char *p = buf;

 pr_reg(REVISION);
 pr_reg(SYSCONFIG);
 pr_reg(SYSSTATUS);
 pr_reg(IRQSTATUS);
 pr_reg(IRQENABLE);
 pr_reg(WALKING_ST);
 pr_reg(CNTL);
 pr_reg(FAULT_AD);
 pr_reg(TTB);
 pr_reg(LOCK);
 pr_reg(LD_TLB);
 pr_reg(CAM);
 pr_reg(RAM);
 pr_reg(GFLUSH);
 pr_reg(FLUSH_ENTRY);
 pr_reg(READ_CAM);
 pr_reg(READ_RAM);
 pr_reg(EMU_FAULT_AD);
out:
 return p - buf;
}
