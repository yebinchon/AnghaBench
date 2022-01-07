
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; } ;
struct device {int dummy; } ;


 int DEVHASH ;
 int DEVSEED ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct list_head dpm_list ;
 unsigned int hash_string (int ,int ,int ) ;
 struct device* to_device (struct list_head*) ;

__attribute__((used)) static int show_dev_hash(unsigned int value)
{
 int match = 0;
 struct list_head *entry = dpm_list.prev;

 while (entry != &dpm_list) {
  struct device * dev = to_device(entry);
  unsigned int hash = hash_string(DEVSEED, dev_name(dev), DEVHASH);
  if (hash == value) {
   dev_info(dev, "hash matches\n");
   match++;
  }
  entry = entry->prev;
 }
 return match;
}
