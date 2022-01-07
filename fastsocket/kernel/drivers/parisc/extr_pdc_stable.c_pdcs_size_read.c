
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int pdcs_size ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t pdcs_size_read(struct kobject *kobj,
         struct kobj_attribute *attr,
         char *buf)
{
 char *out = buf;

 if (!buf)
  return -EINVAL;


 out += sprintf(out, "%ld\n", pdcs_size);

 return out - buf;
}
