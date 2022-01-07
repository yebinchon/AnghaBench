
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_walk_callback ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (scalar_t__,int ,int ,int ,void*,void**)) ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_NS_WALK_UNLOCK ;
 scalar_t__ ACPI_TYPE_LOCAL_MAX ;
 int AE_BAD_PARAMETER ;
 int acpi_gbl_namespace_rw_lock ;
 int acpi_ns_walk_namespace (scalar_t__,int ,int ,int ,int ,void*,void**) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_acquire_read_lock (int *) ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_release_read_lock (int *) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_walk_namespace(acpi_object_type type,
      acpi_handle start_object,
      u32 max_depth,
      acpi_walk_callback user_function,
      void *context, void **return_value)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_walk_namespace);



 if ((type > ACPI_TYPE_LOCAL_MAX) || (!max_depth) || (!user_function)) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }
 status = acpi_ut_acquire_read_lock(&acpi_gbl_namespace_rw_lock);
 if (ACPI_FAILURE(status)) {
  return status;
 }







 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  goto unlock_and_exit;
 }

 status = acpi_ns_walk_namespace(type, start_object, max_depth,
     ACPI_NS_WALK_UNLOCK, user_function,
     context, return_value);

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);

      unlock_and_exit:
 (void)acpi_ut_release_read_lock(&acpi_gbl_namespace_rw_lock);
 return_ACPI_STATUS(status);
}
