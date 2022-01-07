
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int TLan_DioRead32 (int ,int) ;
 int printk (char*,...) ;

__attribute__((used)) static void TLan_PrintDio( u16 io_base )
{
 u32 data0, data1;
 int i;

 printk( "TLAN:   Contents of internal registers for io base 0x%04hx.\n",
  io_base );
 printk( "TLAN:      Off.  +0         +4\n" );
 for ( i = 0; i < 0x4C; i+= 8 ) {
  data0 = TLan_DioRead32( io_base, i );
  data1 = TLan_DioRead32( io_base, i + 0x4 );
  printk( "TLAN:      0x%02x  0x%08x 0x%08x\n", i, data0, data1 );
 }

}
