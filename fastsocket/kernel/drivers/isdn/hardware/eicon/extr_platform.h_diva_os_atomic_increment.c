
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_atomic_t ;



__attribute__((used)) static diva_os_atomic_t __inline__
diva_os_atomic_increment(diva_os_atomic_t* pv)
{
  *pv += 1;
  return (*pv);
}
