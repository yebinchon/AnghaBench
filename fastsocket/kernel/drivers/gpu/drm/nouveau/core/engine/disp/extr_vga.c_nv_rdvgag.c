
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int nv_rdport (void*,int,int) ;
 int nv_wrport (void*,int,int,int ) ;

u8
nv_rdvgag(void *obj, int head, u8 index)
{
 nv_wrport(obj, head, 0x03ce, index);
 return nv_rdport(obj, head, 0x03cf);
}
