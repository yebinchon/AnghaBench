
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvbios_init {TYPE_1__* outp; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {int connector; } ;


 scalar_t__ dcb_conn (struct nouveau_bios*,int ,int*,int*) ;
 int error (char*) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;

__attribute__((used)) static u8
init_conn(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;

 if (init->outp) {
  u8 ver, len;
  u16 conn = dcb_conn(bios, init->outp->connector, &ver, &len);
  if (conn)
   return nv_ro08(bios, conn);
 }

 error("script needs connector type\n");
 return 0x00;
}
