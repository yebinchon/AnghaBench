
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_freemem_callback_t ;


 int EFI_MEMORY_WB ;
 int walk (int ,void*,int ) ;

void
efi_memmap_walk (efi_freemem_callback_t callback, void *arg)
{
 walk(callback, arg, EFI_MEMORY_WB);
}
