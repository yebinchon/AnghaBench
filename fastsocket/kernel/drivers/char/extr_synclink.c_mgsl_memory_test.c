
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {scalar_t__ bus_type; scalar_t__ memory_base; } ;


 unsigned long ARRAY_SIZE (unsigned long*) ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int SHARED_MEM_ADDRESS_SIZE ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static bool mgsl_memory_test( struct mgsl_struct *info )
{
 static unsigned long BitPatterns[] =
  { 0x0, 0x55555555, 0xaaaaaaaa, 0x66666666, 0x99999999, 0xffffffff, 0x12345678 };
 unsigned long Patterncount = ARRAY_SIZE(BitPatterns);
 unsigned long i;
 unsigned long TestLimit = SHARED_MEM_ADDRESS_SIZE/sizeof(unsigned long);
 unsigned long * TestAddr;

 if ( info->bus_type != MGSL_BUS_TYPE_PCI )
  return 1;

 TestAddr = (unsigned long *)info->memory_base;



 for ( i = 0 ; i < Patterncount ; i++ ) {
  *TestAddr = BitPatterns[i];
  if ( *TestAddr != BitPatterns[i] )
   return 0;
 }




 for ( i = 0 ; i < TestLimit ; i++ ) {
  *TestAddr = i * 4;
  TestAddr++;
 }

 TestAddr = (unsigned long *)info->memory_base;

 for ( i = 0 ; i < TestLimit ; i++ ) {
  if ( *TestAddr != i * 4 )
   return 0;
  TestAddr++;
 }

 memset( info->memory_base, 0, SHARED_MEM_ADDRESS_SIZE );

 return 1;

}
