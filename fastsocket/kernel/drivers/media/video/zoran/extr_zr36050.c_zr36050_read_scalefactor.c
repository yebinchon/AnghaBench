
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zr36050 {int scalefact; } ;


 int ZR050_SF_HI ;
 int ZR050_SF_LO ;
 int zr36050_read (struct zr36050*,int ) ;

__attribute__((used)) static u16
zr36050_read_scalefactor (struct zr36050 *ptr)
{
 ptr->scalefact = (zr36050_read(ptr, ZR050_SF_HI) << 8) |
    (zr36050_read(ptr, ZR050_SF_LO) & 0xFF);


 zr36050_read(ptr, 0);
 return ptr->scalefact;
}
