
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int nv_error (void*,char*,int) ;
 int nv_wrvgac (void*,int,int ,int ) ;
 int nv_wrvgag (void*,int,int ,int ) ;
 int nv_wrvgas (void*,int,int ,int ) ;

void
nv_wrvgai(void *obj, int head, u16 port, u8 index, u8 value)
{
 if (port == 0x03c4) nv_wrvgas(obj, head, index, value);
 else if (port == 0x03ce) nv_wrvgag(obj, head, index, value);
 else if (port == 0x03d4) nv_wrvgac(obj, head, index, value);
 else nv_error(obj, "unknown indexed vga port 0x%04x\n", port);
}
