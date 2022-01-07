
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int index; int addr0; int addr1; int addr2; } ;
typedef TYPE_1__ camentry_t ;



__attribute__((used)) static void putcam(camentry_t * cams, int *camcnt, char *addr)
{
 camentry_t *pcam = cams + (*camcnt);
 u8 *uaddr = (u8 *) addr;

 pcam->index = *camcnt;
 pcam->addr0 = (((u16) uaddr[1]) << 8) | uaddr[0];
 pcam->addr1 = (((u16) uaddr[3]) << 8) | uaddr[2];
 pcam->addr2 = (((u16) uaddr[5]) << 8) | uaddr[4];
 (*camcnt)++;
}
