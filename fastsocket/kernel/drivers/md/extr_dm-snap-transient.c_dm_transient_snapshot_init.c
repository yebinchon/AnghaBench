
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMWARN (char*) ;
 int _transient_compat_type ;
 int _transient_type ;
 int dm_exception_store_type_register (int *) ;
 int dm_exception_store_type_unregister (int *) ;

int dm_transient_snapshot_init(void)
{
 int r;

 r = dm_exception_store_type_register(&_transient_type);
 if (r) {
  DMWARN("Unable to register transient exception store type");
  return r;
 }

 r = dm_exception_store_type_register(&_transient_compat_type);
 if (r) {
  DMWARN("Unable to register old-style transient "
         "exception store type");
  dm_exception_store_type_unregister(&_transient_type);
  return r;
 }

 return r;
}
