
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GT_HINTRCAUSE_OFS ;
 int GT_HINTRMASK_OFS ;
 int GT_INTRCAUSE_OFS ;
 int GT_INTRMASK_OFS ;
 int GT_PCI0_HICMASK_OFS ;
 int GT_PCI0_ICMASK_OFS ;
 int GT_WRITE (int ,int) ;

void gt64120_init_pic(void)
{

 GT_WRITE(GT_INTRCAUSE_OFS, (0x1F << 21));
 GT_WRITE(GT_HINTRCAUSE_OFS, 0x00);


 GT_WRITE(GT_INTRMASK_OFS, 0x00);
 GT_WRITE(GT_HINTRMASK_OFS, 0x00);
 GT_WRITE(GT_PCI0_ICMASK_OFS, 0x00);
 GT_WRITE(GT_PCI0_HICMASK_OFS, 0x00);
}
