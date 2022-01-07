
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int dummy; } ;
struct cr_regs {int cam; int ram; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t omap2_dump_cr(struct iommu *obj, struct cr_regs *cr, char *buf)
{
 char *p = buf;


 p += sprintf(p, "%08x %08x\n", cr->cam, cr->ram);

 return p - buf;
}
