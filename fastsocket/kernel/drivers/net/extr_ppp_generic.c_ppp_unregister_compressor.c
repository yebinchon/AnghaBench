
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_entry {int list; struct compressor* comp; } ;
struct compressor {int compress_proto; } ;


 int compressor_list_lock ;
 struct compressor_entry* find_comp_entry (int ) ;
 int kfree (struct compressor_entry*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
ppp_unregister_compressor(struct compressor *cp)
{
 struct compressor_entry *ce;

 spin_lock(&compressor_list_lock);
 ce = find_comp_entry(cp->compress_proto);
 if (ce && ce->comp == cp) {
  list_del(&ce->list);
  kfree(ce);
 }
 spin_unlock(&compressor_list_lock);
}
