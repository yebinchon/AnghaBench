
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ phys_addr; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 scalar_t__ efi_md_size (TYPE_1__*) ;

__attribute__((used)) static inline u64
efi_md_end(efi_memory_desc_t *md)
{
 return (md->phys_addr + efi_md_size(md));
}
