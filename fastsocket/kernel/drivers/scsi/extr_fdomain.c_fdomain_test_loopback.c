
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Read_Loopback ;
 scalar_t__ Write_Loopback ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 scalar_t__ port_base ;

__attribute__((used)) static int fdomain_test_loopback( void )
{
   int i;
   int result;

   for (i = 0; i < 255; i++) {
      outb( i, port_base + Write_Loopback );
      result = inb( port_base + Read_Loopback );
      if (i != result)
     return 1;
   }
   return 0;
}
