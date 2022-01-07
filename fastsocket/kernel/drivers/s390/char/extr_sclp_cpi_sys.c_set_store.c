
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int cpi_req () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sclp_cpi_mutex ;

__attribute__((used)) static ssize_t set_store(struct kobject *kobj,
    struct kobj_attribute *attr,
    const char *buf, size_t len)
{
 int rc;

 mutex_lock(&sclp_cpi_mutex);
 rc = cpi_req();
 mutex_unlock(&sclp_cpi_mutex);
 if (rc)
  return rc;

 return len;
}
