
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_ISC ;
 int WARN_ON (int) ;
 int ctl_set_bit (int,int) ;
 int isc_ref_lock ;
 scalar_t__* isc_refs ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void isc_register(unsigned int isc)
{
 if (isc > MAX_ISC) {
  WARN_ON(1);
  return;
 }

 spin_lock(&isc_ref_lock);
 if (isc_refs[isc] == 0)
  ctl_set_bit(6, 31 - isc);
 isc_refs[isc]++;
 spin_unlock(&isc_ref_lock);
}
