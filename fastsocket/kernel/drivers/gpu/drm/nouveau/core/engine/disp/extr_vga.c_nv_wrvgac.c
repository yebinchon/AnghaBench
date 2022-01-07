
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int nv_wrport (void*,int,int,int ) ;

void
nv_wrvgac(void *obj, int head, u8 index, u8 value)
{
 nv_wrport(obj, head, 0x03d4, index);
 nv_wrport(obj, head, 0x03d5, value);
}
