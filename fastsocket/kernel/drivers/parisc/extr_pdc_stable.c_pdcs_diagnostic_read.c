
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int result ;


 int EINVAL ;
 int EIO ;
 int PDCS_ADDR_DIAG ;
 scalar_t__ PDC_OK ;
 scalar_t__ pdc_stable_read (int ,int*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pdcs_diagnostic_read(struct kobject *kobj,
        struct kobj_attribute *attr, char *buf)
{
 char *out = buf;
 u32 result;

 if (!buf)
  return -EINVAL;


 if (pdc_stable_read(PDCS_ADDR_DIAG, &result, sizeof(result)) != PDC_OK)
  return -EIO;

 out += sprintf(out, "0x%.4x\n", (result >> 16));

 return out - buf;
}
