
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct pdcspath_entry {int rw_lock; TYPE_1__ devpath; } ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct pdcspath_entry pdcspath_entry_primary ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t pdcs_auto_read(struct kobject *kobj,
         struct kobj_attribute *attr,
         char *buf, int knob)
{
 char *out = buf;
 struct pdcspath_entry *pathentry;

 if (!buf)
  return -EINVAL;


 pathentry = &pdcspath_entry_primary;

 read_lock(&pathentry->rw_lock);
 out += sprintf(out, "%s\n", (pathentry->devpath.flags & knob) ?
     "On" : "Off");
 read_unlock(&pathentry->rw_lock);

 return out - buf;
}
