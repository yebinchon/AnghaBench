
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct hash_cell {int * new_map; struct mapped_device* md; int uuid_list; int name_list; struct hash_cell* name; int * uuid; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct hash_cell*) ;
 struct hash_cell* kmalloc (int,int ) ;
 void* kstrdup (char const*,int ) ;

__attribute__((used)) static struct hash_cell *alloc_cell(const char *name, const char *uuid,
        struct mapped_device *md)
{
 struct hash_cell *hc;

 hc = kmalloc(sizeof(*hc), GFP_KERNEL);
 if (!hc)
  return ((void*)0);

 hc->name = kstrdup(name, GFP_KERNEL);
 if (!hc->name) {
  kfree(hc);
  return ((void*)0);
 }

 if (!uuid)
  hc->uuid = ((void*)0);

 else {
  hc->uuid = kstrdup(uuid, GFP_KERNEL);
  if (!hc->uuid) {
   kfree(hc->name);
   kfree(hc);
   return ((void*)0);
  }
 }

 INIT_LIST_HEAD(&hc->name_list);
 INIT_LIST_HEAD(&hc->uuid_list);
 hc->md = md;
 hc->new_map = ((void*)0);
 return hc;
}
