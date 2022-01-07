
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int WR (int,int) ;
 int t2 (int) ;
 int w0 (int) ;
 int w2 (int) ;
 int w4 (char) ;
 int w4l (int ) ;
 int w4w (int ) ;

__attribute__((used)) static void bpck_write_block( PIA *pi, char * buf, int count )

{ int i;

 switch (pi->mode) {

 case 0: WR(4,0x40);
  w0(0x40); t2(2); t2(1);
  for (i=0;i<count;i++) { w0(buf[i]); t2(4); }
  WR(4,0);
  break;

 case 1: WR(4,0x50);
                w0(0x40); t2(2); t2(1);
                for (i=0;i<count;i++) { w0(buf[i]); t2(4); }
                WR(4,0x10);
  break;

 case 2: WR(4,0x48);
  w0(0x40); w2(9); w2(0); w2(1);
  for (i=0;i<count;i++) w4(buf[i]);
  w2(0);
  WR(4,8);
  break;

        case 3: WR(4,0x48);
                w0(0x40); w2(9); w2(0); w2(1);
                for (i=0;i<count/2;i++) w4w(((u16 *)buf)[i]);
                w2(0);
                WR(4,8);
                break;

        case 4: WR(4,0x48);
                w0(0x40); w2(9); w2(0); w2(1);
                for (i=0;i<count/4;i++) w4l(((u32 *)buf)[i]);
                w2(0);
                WR(4,8);
                break;
  }
}
