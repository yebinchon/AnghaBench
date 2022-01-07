
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {unsigned long packetsize; int lock; } ;


 int packet_empty_list () ;
 TYPE_1__ rbu_data ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t write_rbu_packet_size(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buffer, loff_t pos, size_t count)
{
 unsigned long temp;
 spin_lock(&rbu_data.lock);
 packet_empty_list();
 sscanf(buffer, "%lu", &temp);
 if (temp < 0xffffffff)
  rbu_data.packetsize = temp;

 spin_unlock(&rbu_data.lock);
 return count;
}
