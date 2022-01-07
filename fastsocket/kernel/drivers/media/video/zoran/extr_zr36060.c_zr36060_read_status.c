
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zr36060 {int status; } ;


 int ZR060_CFSR ;
 int zr36060_read (struct zr36060*,int ) ;

__attribute__((used)) static u8
zr36060_read_status (struct zr36060 *ptr)
{
 ptr->status = zr36060_read(ptr, ZR060_CFSR);

 zr36060_read(ptr, 0);
 return ptr->status;
}
