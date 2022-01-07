
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmb_entry {struct pmb_entry* link; } ;
struct TYPE_3__ {unsigned long size; int flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 long EBUSY ;
 scalar_t__ IS_ERR (struct pmb_entry*) ;
 int PMB_C ;
 int PMB_UB ;
 int PMB_WT ;
 long PTR_ERR (struct pmb_entry*) ;
 unsigned long _PAGE_CACHABLE ;
 unsigned long _PAGE_WT ;
 int __pmb_unmap (struct pmb_entry*) ;
 scalar_t__ likely (struct pmb_entry*) ;
 struct pmb_entry* pmb_alloc (unsigned long,unsigned long,int) ;
 int pmb_free (struct pmb_entry*) ;
 TYPE_1__* pmb_sizes ;
 int set_pmb_entry (struct pmb_entry*) ;

long pmb_remap(unsigned long vaddr, unsigned long phys,
        unsigned long size, unsigned long flags)
{
 struct pmb_entry *pmbp, *pmbe;
 unsigned long wanted;
 int pmb_flags, i;
 long err;


 if (flags & _PAGE_CACHABLE) {
  if (flags & _PAGE_WT)
   pmb_flags = PMB_WT;
  else
   pmb_flags = PMB_C;
 } else
  pmb_flags = PMB_WT | PMB_UB;

 pmbp = ((void*)0);
 wanted = size;

again:
 for (i = 0; i < ARRAY_SIZE(pmb_sizes); i++) {
  int ret;

  if (size < pmb_sizes[i].size)
   continue;

  pmbe = pmb_alloc(vaddr, phys, pmb_flags | pmb_sizes[i].flag);
  if (IS_ERR(pmbe)) {
   err = PTR_ERR(pmbe);
   goto out;
  }

  ret = set_pmb_entry(pmbe);
  if (ret != 0) {
   pmb_free(pmbe);
   err = -EBUSY;
   goto out;
  }

  phys += pmb_sizes[i].size;
  vaddr += pmb_sizes[i].size;
  size -= pmb_sizes[i].size;





  if (likely(pmbp))
   pmbp->link = pmbe;

  pmbp = pmbe;






  i--;
 }

 if (size >= 0x1000000)
  goto again;

 return wanted - size;

out:
 if (pmbp)
  __pmb_unmap(pmbp);

 return err;
}
