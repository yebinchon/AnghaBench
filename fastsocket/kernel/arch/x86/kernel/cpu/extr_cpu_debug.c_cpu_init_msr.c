
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int flag; } ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__* cpu_base ;
 int cpu_init_regfiles (unsigned int,unsigned int,unsigned int,struct dentry*) ;
 int cpu_reg_range ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int get_cpu_range (unsigned int,unsigned int*,unsigned int*,int,int ) ;
 scalar_t__ rdmsr_safe_on_cpu (unsigned int,unsigned int,int *,int *) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int cpu_init_msr(unsigned cpu, unsigned type, struct dentry *dentry)
{
 struct dentry *cpu_dentry = ((void*)0);
 unsigned reg, reg_min, reg_max;
 int i, err = 0;
 char reg_dir[12];
 u32 low, high;

 for (i = 0; i < ARRAY_SIZE(cpu_reg_range); i++) {
  if (!get_cpu_range(cpu, &reg_min, &reg_max, i,
       cpu_base[type].flag))
   continue;

  for (reg = reg_min; reg <= reg_max; reg++) {
   if (rdmsr_safe_on_cpu(cpu, reg, &low, &high))
    continue;

   sprintf(reg_dir, "0x%x", reg);
   cpu_dentry = debugfs_create_dir(reg_dir, dentry);
   err = cpu_init_regfiles(cpu, type, reg, cpu_dentry);
   if (err)
    return err;
  }
 }

 return err;
}
