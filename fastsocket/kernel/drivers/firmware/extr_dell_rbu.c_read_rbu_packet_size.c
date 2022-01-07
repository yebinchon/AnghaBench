
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int lock; int packetsize; } ;


 TYPE_1__ rbu_data ;
 int scnprintf (char*,size_t,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t read_rbu_packet_size(struct file *filp, struct kobject *kobj,
        struct bin_attribute *bin_attr,
        char *buffer, loff_t pos, size_t count)
{
 int size = 0;
 if (!pos) {
  spin_lock(&rbu_data.lock);
  size = scnprintf(buffer, count, "%lu\n", rbu_data.packetsize);
  spin_unlock(&rbu_data.lock);
 }
 return size;
}
