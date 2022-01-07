
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_ILLAN_ATTRIBUTES ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long h_illan_attributes(unsigned long unit_address,
          unsigned long reset_mask, unsigned long set_mask,
          unsigned long *ret_attributes)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 rc = plpar_hcall(H_ILLAN_ATTRIBUTES, retbuf, unit_address,
    reset_mask, set_mask);

 *ret_attributes = retbuf[0];

 return rc;
}
