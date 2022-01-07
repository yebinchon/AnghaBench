
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csr1212_csr_rom_cache {struct csr1212_csr_rom_cache* next; struct csr1212_csr_rom_cache* filled_head; struct csr1212_csr_rom_cache* cache_head; int root_kv; } ;
struct csr1212_csr {struct csr1212_csr* next; struct csr1212_csr* filled_head; struct csr1212_csr* cache_head; int root_kv; } ;
struct csr1212_cache_region {struct csr1212_cache_region* next; struct csr1212_cache_region* filled_head; struct csr1212_cache_region* cache_head; int root_kv; } ;


 int CSR1212_FREE (struct csr1212_csr_rom_cache*) ;
 int csr1212_release_keyval (int ) ;

void csr1212_destroy_csr(struct csr1212_csr *csr)
{
 struct csr1212_csr_rom_cache *c, *oc;
 struct csr1212_cache_region *cr, *ocr;

 csr1212_release_keyval(csr->root_kv);

 c = csr->cache_head;
 while (c) {
  oc = c;
  cr = c->filled_head;
  while (cr) {
   ocr = cr;
   cr = cr->next;
   CSR1212_FREE(ocr);
  }
  c = c->next;
  CSR1212_FREE(oc);
 }

 CSR1212_FREE(csr);
}
