
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firmware_map_entry {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int firmware_map_add_entry (int ,int ,char const*,struct firmware_map_entry*) ;
 struct firmware_map_entry* kmalloc (int,int ) ;

int firmware_map_add(u64 start, u64 end, const char *type)
{
 struct firmware_map_entry *entry;

 entry = kmalloc(sizeof(struct firmware_map_entry), GFP_ATOMIC);
 if (!entry)
  return -ENOMEM;

 return firmware_map_add_entry(start, end, type, entry);
}
