
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int partition_coherence_id () ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t coherence_id_show(struct kobject *kobj,
   struct kobj_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%ld\n", partition_coherence_id());
}
