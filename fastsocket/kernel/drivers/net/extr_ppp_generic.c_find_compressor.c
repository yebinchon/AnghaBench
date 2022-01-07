
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_entry {struct compressor* comp; } ;
struct compressor {int owner; } ;


 int compressor_list_lock ;
 struct compressor_entry* find_comp_entry (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct compressor *
find_compressor(int type)
{
 struct compressor_entry *ce;
 struct compressor *cp = ((void*)0);

 spin_lock(&compressor_list_lock);
 ce = find_comp_entry(type);
 if (ce) {
  cp = ce->comp;
  if (!try_module_get(cp->owner))
   cp = ((void*)0);
 }
 spin_unlock(&compressor_list_lock);
 return cp;
}
