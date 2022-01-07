
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ hvc_iucv_filter ;
 size_t hvc_iucv_filter_size ;
 scalar_t__ memcmp (int *,scalar_t__,int) ;

__attribute__((used)) static int hvc_iucv_filter_connreq(u8 ipvmid[8])
{
 size_t i;


 if (!hvc_iucv_filter_size)
  return 0;

 for (i = 0; i < hvc_iucv_filter_size; i++)
  if (0 == memcmp(ipvmid, hvc_iucv_filter + (8 * i), 8))
   return 0;
 return 1;
}
