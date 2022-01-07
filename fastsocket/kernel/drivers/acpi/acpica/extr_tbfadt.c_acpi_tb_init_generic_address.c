
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u64 ;
struct acpi_generic_address {scalar_t__ access_width; scalar_t__ bit_offset; void* bit_width; void* space_id; int address; } ;


 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 scalar_t__ ACPI_MUL_8 (void*) ;

__attribute__((used)) static inline void
acpi_tb_init_generic_address(struct acpi_generic_address *generic_address,
        u8 space_id, u8 byte_width, u64 address)
{





 ACPI_MOVE_64_TO_64(&generic_address->address, &address);



 generic_address->space_id = space_id;
 generic_address->bit_width = (u8)ACPI_MUL_8(byte_width);
 generic_address->bit_offset = 0;
 generic_address->access_width = 0;
}
