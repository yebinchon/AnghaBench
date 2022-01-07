
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {scalar_t__ section; scalar_t__ enable; } ;
struct i7core_pvt {TYPE_1__ inject; } ;
typedef size_t ssize_t ;


 size_t EIO ;
 int disable_inject (struct mem_ctl_info*) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t i7core_inject_section_store(struct mem_ctl_info *mci,
        const char *data, size_t count)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 unsigned long value;
 int rc;

 if (pvt->inject.enable)
  disable_inject(mci);

 rc = strict_strtoul(data, 10, &value);
 if ((rc < 0) || (value > 3))
  return -EIO;

 pvt->inject.section = (u32) value;
 return count;
}
