
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zr36060 {int scalefact; } ;


 int ZR060_SF_HI ;
 int ZR060_SF_LO ;
 int zr36060_read (struct zr36060*,int ) ;

__attribute__((used)) static u16
zr36060_read_scalefactor (struct zr36060 *ptr)
{
 ptr->scalefact = (zr36060_read(ptr, ZR060_SF_HI) << 8) |
    (zr36060_read(ptr, ZR060_SF_LO) & 0xFF);


 zr36060_read(ptr, 0);
 return ptr->scalefact;
}
