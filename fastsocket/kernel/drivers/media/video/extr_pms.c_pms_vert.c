
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mvv_write (int,int ) ;

__attribute__((used)) static void pms_vert(u8 deciden, u8 decinum)
{
 mvv_write(0x1C, deciden);
 mvv_write(0x1D, decinum);
}
