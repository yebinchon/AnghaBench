
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ACPI_FUNCTION_ENTRY () ;

u32 acpi_ut_dword_byte_swap(u32 value)
{
 union {
  u32 value;
  u8 bytes[4];
 } out;
 union {
  u32 value;
  u8 bytes[4];
 } in;

 ACPI_FUNCTION_ENTRY();

 in.value = value;

 out.bytes[0] = in.bytes[3];
 out.bytes[1] = in.bytes[2];
 out.bytes[2] = in.bytes[1];
 out.bytes[3] = in.bytes[0];

 return (out.value);
}
