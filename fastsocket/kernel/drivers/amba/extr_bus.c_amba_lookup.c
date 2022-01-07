
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_id {int mask; int id; } ;
struct amba_device {int periphid; } ;



__attribute__((used)) static struct amba_id *
amba_lookup(struct amba_id *table, struct amba_device *dev)
{
 int ret = 0;

 while (table->mask) {
  ret = (dev->periphid & table->mask) == table->id;
  if (ret)
   break;
  table++;
 }

 return ret ? table : ((void*)0);
}
