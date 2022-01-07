
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;


 int dcb_conntab (struct nouveau_bios*,int*,int*,int*,int*) ;

u16
dcb_conn(struct nouveau_bios *bios, u8 idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u16 data = dcb_conntab(bios, ver, &hdr, &cnt, len);
 if (data && idx < cnt)
  return data + hdr + (idx * *len);
 return 0x0000;
}
