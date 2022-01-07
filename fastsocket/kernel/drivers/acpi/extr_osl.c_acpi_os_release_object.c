
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_cache_t ;


 int AE_OK ;
 int kmem_cache_free (int *,void*) ;

acpi_status acpi_os_release_object(acpi_cache_t * cache, void *object)
{
 kmem_cache_free(cache, object);
 return (AE_OK);
}
