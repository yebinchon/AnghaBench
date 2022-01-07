
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zr36050 {int status1; } ;


 int ZR050_STATUS_1 ;
 int zr36050_read (struct zr36050*,int ) ;

__attribute__((used)) static u8
zr36050_read_status1 (struct zr36050 *ptr)
{
 ptr->status1 = zr36050_read(ptr, ZR050_STATUS_1);

 zr36050_read(ptr, 0);
 return ptr->status1;
}
