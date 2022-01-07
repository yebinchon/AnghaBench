
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ns_mem {int * byte; } ;
struct TYPE_4__ {int row; } ;
struct TYPE_3__ {int pgsec; } ;
struct nandsim {int nand_pages_slab; TYPE_2__ regs; TYPE_1__ geom; scalar_t__* pages_written; scalar_t__ cfile; } ;


 int NS_DBG (char*,int) ;
 union ns_mem* NS_GET_PAGE (struct nandsim*) ;
 int kmem_cache_free (int ,int *) ;

__attribute__((used)) static void erase_sector(struct nandsim *ns)
{
 union ns_mem *mypage;
 int i;

 if (ns->cfile) {
  for (i = 0; i < ns->geom.pgsec; i++)
   if (ns->pages_written[ns->regs.row + i]) {
    NS_DBG("erase_sector: freeing page %d\n", ns->regs.row + i);
    ns->pages_written[ns->regs.row + i] = 0;
   }
  return;
 }

 mypage = NS_GET_PAGE(ns);
 for (i = 0; i < ns->geom.pgsec; i++) {
  if (mypage->byte != ((void*)0)) {
   NS_DBG("erase_sector: freeing page %d\n", ns->regs.row+i);
   kmem_cache_free(ns->nand_pages_slab, mypage->byte);
   mypage->byte = ((void*)0);
  }
  mypage++;
 }
}
