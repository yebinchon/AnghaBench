
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long INVALID_P2M_ENTRY ;
 int XENFEAT_auto_translated_physmap ;
 unsigned int p2m_index (unsigned long) ;
 unsigned long* p2m_missing ;
 unsigned long** p2m_top ;
 unsigned int p2m_top_index (unsigned long) ;
 scalar_t__ unlikely (int) ;
 int xen_feature (int ) ;
 unsigned long xen_max_p2m_pfn ;

bool __set_phys_to_machine(unsigned long pfn, unsigned long mfn)
{
 unsigned topidx, idx;

 if (unlikely(xen_feature(XENFEAT_auto_translated_physmap))) {
  BUG_ON(pfn != mfn && mfn != INVALID_P2M_ENTRY);
  return 1;
 }

 if (unlikely(pfn >= xen_max_p2m_pfn)) {
  BUG_ON(mfn != INVALID_P2M_ENTRY);
  return 1;
 }

 topidx = p2m_top_index(pfn);
 if (p2m_top[topidx] == p2m_missing) {
  if (mfn == INVALID_P2M_ENTRY)
   return 1;
  return 0;
 }

 idx = p2m_index(pfn);
 p2m_top[topidx][idx] = mfn;

 return 1;
}
