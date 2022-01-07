
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANSLCD_DATA_IX ;
 scalar_t__ anslcd_ptr ;
 int anslcd_short_delay ;
 int out_8 (scalar_t__,unsigned char) ;
 int udelay (int ) ;

__attribute__((used)) static void
anslcd_write_byte_data ( unsigned char c )
{
 out_8(anslcd_ptr + ANSLCD_DATA_IX, c);
 udelay(anslcd_short_delay);
}
