
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef size_t u16 ;
struct radeon_atif {int functions; int notifications; } ;
struct atif_verify_interface {int function_bits; int notification_mask; int version; } ;
typedef int output ;
typedef int acpi_handle ;


 int ATIF_FUNCTION_VERIFY_INTERFACE ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_INFO (char*,size_t) ;
 int EINVAL ;
 int EIO ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atif_verify_interface*,scalar_t__,size_t) ;
 int memset (struct atif_verify_interface*,int ,int) ;
 size_t min (int,size_t) ;
 union acpi_object* radeon_atif_call (int ,int ,int *) ;
 int radeon_atif_parse_functions (int *,int ) ;
 int radeon_atif_parse_notification (int *,int ) ;

__attribute__((used)) static int radeon_atif_verify_interface(acpi_handle handle,
  struct radeon_atif *atif)
{
 union acpi_object *info;
 struct atif_verify_interface output;
 size_t size;
 int err = 0;

 info = radeon_atif_call(handle, ATIF_FUNCTION_VERIFY_INTERFACE, ((void*)0));
 if (!info)
  return -EIO;

 memset(&output, 0, sizeof(output));

 size = *(u16 *) info->buffer.pointer;
 if (size < 12) {
  DRM_INFO("ATIF buffer is too small: %zu\n", size);
  err = -EINVAL;
  goto out;
 }
 size = min(sizeof(output), size);

 memcpy(&output, info->buffer.pointer, size);


 DRM_DEBUG_DRIVER("ATIF version %u\n", output.version);

 radeon_atif_parse_notification(&atif->notifications, output.notification_mask);
 radeon_atif_parse_functions(&atif->functions, output.function_bits);

out:
 kfree(info);
 return err;
}
