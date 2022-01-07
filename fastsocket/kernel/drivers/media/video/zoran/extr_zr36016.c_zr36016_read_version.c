
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zr36016 {int version; } ;


 int zr36016_read (struct zr36016*,int ) ;

__attribute__((used)) static u8
zr36016_read_version (struct zr36016 *ptr)
{
 ptr->version = zr36016_read(ptr, 0) >> 4;
 return ptr->version;
}
