
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int IPL_CCW_STR ;
 int IPL_FCP_STR ;
 int IPL_NSS_STR ;
 int IPL_TYPE_CCW ;
 int IPL_TYPE_FCP ;
 int IPL_TYPE_NSS ;
 int reipl_set_type (int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static ssize_t reipl_type_store(struct kobject *kobj,
    struct kobj_attribute *attr,
    const char *buf, size_t len)
{
 int rc = -EINVAL;

 if (strncmp(buf, IPL_CCW_STR, strlen(IPL_CCW_STR)) == 0)
  rc = reipl_set_type(IPL_TYPE_CCW);
 else if (strncmp(buf, IPL_FCP_STR, strlen(IPL_FCP_STR)) == 0)
  rc = reipl_set_type(IPL_TYPE_FCP);
 else if (strncmp(buf, IPL_NSS_STR, strlen(IPL_NSS_STR)) == 0)
  rc = reipl_set_type(IPL_TYPE_NSS);
 return (rc != 0) ? rc : len;
}
