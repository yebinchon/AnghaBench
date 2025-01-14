
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mem_ctl_info {int dummy; } ;


 int KERN_INFO ;
 int MESR_ECC_SYN_H_MASK ;
 int MESR_ECC_SYN_L_MASK ;
 int cpc925_mc_printk (struct mem_ctl_info*,int ,char*,int) ;

__attribute__((used)) static int cpc925_mc_find_channel(struct mem_ctl_info *mci, u16 syndrome)
{
 if ((syndrome & MESR_ECC_SYN_H_MASK) == 0)
  return 0;

 if ((syndrome & MESR_ECC_SYN_L_MASK) == 0)
  return 1;

 cpc925_mc_printk(mci, KERN_INFO, "Unexpected syndrome value: 0x%x\n",
    syndrome);
 return 1;
}
