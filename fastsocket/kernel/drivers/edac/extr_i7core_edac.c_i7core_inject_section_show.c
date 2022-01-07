
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {int section; } ;
struct i7core_pvt {TYPE_1__ inject; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t i7core_inject_section_show(struct mem_ctl_info *mci,
           char *data)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 return sprintf(data, "0x%08x\n", pvt->inject.section);
}
