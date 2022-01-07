
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; scalar_t__ devtype; scalar_t__ unit; int saved_r0; } ;
typedef TYPE_1__ PIA ;


 scalar_t__ PI_PCD ;
 int WR (int,int) ;
 int r0 () ;
 int t2 (int) ;
 int w0 (scalar_t__) ;
 int w2 (int) ;

__attribute__((used)) static void bpck_connect ( PIA *pi )

{ pi->saved_r0 = r0();
 w0(0xff-pi->unit); w2(4); w0(pi->unit);
 t2(8); t2(8); t2(8);
 t2(2); t2(2);

 switch (pi->mode) {

 case 0: t2(8); WR(4,0);
  break;

 case 1: t2(8); WR(4,0x10);
  break;

 case 2:
        case 3:
 case 4: w2(0); WR(4,8);
  break;

 }

 WR(5,8);

 if (pi->devtype == PI_PCD) {
  WR(0x46,0x10);
  WR(0x4c,0x38);
  WR(0x4d,0x88);
  WR(0x46,0xa0);
  WR(0x41,0);
  WR(0x4e,8);
  }
}
