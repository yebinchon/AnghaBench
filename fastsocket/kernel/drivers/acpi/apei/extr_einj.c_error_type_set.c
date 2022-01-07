
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int EINVAL ;
 int einj_get_available_error_type (int*) ;
 int error_type ;

__attribute__((used)) static int error_type_set(void *data, u64 val)
{
 int rc;
 u32 available_error_type = 0;
 u32 tval, vendor;





 vendor = val & 0x80000000;
 tval = val & 0x7fffffff;


 if (tval & (tval - 1))
  return -EINVAL;
 if (!vendor) {
  rc = einj_get_available_error_type(&available_error_type);
  if (rc)
   return rc;
  if (!(val & available_error_type))
   return -EINVAL;
 }
 error_type = val;

 return 0;
}
