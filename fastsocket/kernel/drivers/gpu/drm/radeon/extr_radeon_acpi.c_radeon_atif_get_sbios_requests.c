
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef size_t u16 ;
struct atif_sbios_requests {int pending; } ;
typedef int acpi_handle ;


 int ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int EINVAL ;
 int EIO ;
 int hweight32 (int ) ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atif_sbios_requests*,scalar_t__,size_t) ;
 int memset (struct atif_sbios_requests*,int ,int) ;
 size_t min (int,size_t) ;
 union acpi_object* radeon_atif_call (int ,int ,int *) ;

__attribute__((used)) static int radeon_atif_get_sbios_requests(acpi_handle handle,
  struct atif_sbios_requests *req)
{
 union acpi_object *info;
 size_t size;
 int count = 0;

 info = radeon_atif_call(handle, ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS, ((void*)0));
 if (!info)
  return -EIO;

 size = *(u16 *)info->buffer.pointer;
 if (size < 0xd) {
  count = -EINVAL;
  goto out;
 }
 memset(req, 0, sizeof(*req));

 size = min(sizeof(*req), size);
 memcpy(req, info->buffer.pointer, size);
 DRM_DEBUG_DRIVER("SBIOS pending requests: %#x\n", req->pending);

 count = hweight32(req->pending);

out:
 kfree(info);
 return count;
}
