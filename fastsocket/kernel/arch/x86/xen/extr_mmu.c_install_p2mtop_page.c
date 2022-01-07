
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INVALID_P2M_ENTRY ;
 unsigned int P2M_ENTRIES_PER_PAGE ;
 scalar_t__ cmpxchg (unsigned long**,scalar_t__,unsigned long*) ;
 scalar_t__ p2m_missing ;
 unsigned long** p2m_top ;
 unsigned int p2m_top_index (unsigned long) ;
 unsigned long* p2m_top_mfn ;
 unsigned long virt_to_mfn (unsigned long*) ;

bool install_p2mtop_page(unsigned long pfn, unsigned long *p)
{
 unsigned topidx = p2m_top_index(pfn);
 unsigned long **pfnp, *mfnp;
 unsigned i;

 pfnp = &p2m_top[topidx];
 mfnp = &p2m_top_mfn[topidx];

 for (i = 0; i < P2M_ENTRIES_PER_PAGE; i++)
  p[i] = INVALID_P2M_ENTRY;

 if (cmpxchg(pfnp, p2m_missing, p) == p2m_missing) {
  *mfnp = virt_to_mfn(p);
  return 1;
 }

 return 0;
}
