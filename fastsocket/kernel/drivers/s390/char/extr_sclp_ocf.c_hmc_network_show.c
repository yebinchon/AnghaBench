
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* hmc_network ;
 int sclp_ocf_lock ;
 int snprintf (char*,int ,char*,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static ssize_t hmc_network_show(struct kobject *kobj,
    struct kobj_attribute *attr, char *page)
{
 int rc;

 spin_lock_irq(&sclp_ocf_lock);
 rc = snprintf(page, PAGE_SIZE, "%s\n", hmc_network);
 spin_unlock_irq(&sclp_ocf_lock);
 return rc;
}
