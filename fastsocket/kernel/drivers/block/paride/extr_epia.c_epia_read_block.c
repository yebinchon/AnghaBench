
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
 char j44 (int,int) ;
 char j53 (int,int) ;
 char r0 () ;
 int r1 () ;
 int r2 () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int ) ;

__attribute__((used)) static void epia_read_block( PIA *pi, char * buf, int count )

{ int k, ph, a, b;

        switch (pi->mode) {

        case 0: w0(0x81); w2(1); w2(3); w0(0xc1);
                ph = 1;
                for (k=0;k<count;k++) {
                        w2(2+ph); a = r1();
                        w2(4+ph); b = r1();
                        buf[k] = j44(a,b);
                        ph = 1 - ph;
                }
                w0(0); w2(4);
                break;

        case 1: w0(0x91); w2(1); w0(0x10); w2(3);
                w0(0x51); w2(5); w0(0xd1);
                ph = 1;
                for (k=0;k<count;k++) {
                        w2(4+ph);
                        a = r1(); b = r2();
                        buf[k] = j53(a,b);
                        ph = 1 - ph;
                }
                w0(0); w2(4);
                break;

        case 2: w0(0x89); w2(1); w2(0x23); w2(0x21);
                ph = 1;
                for (k=0;k<count;k++) {
                        w2(0x24+ph);
                        buf[k] = r0();
                        ph = 1 - ph;
                }
                w2(6); w2(4);
                break;

        case 3: if (count > 512) WR(0x84,3);
  w3(0); w2(0x24);
                for (k=0;k<count;k++) buf[k] = r4();
                w2(4); WR(0x84,0);
                break;

        case 4: if (count > 512) WR(0x84,3);
  w3(0); w2(0x24);
  for (k=0;k<count/2;k++) ((u16 *)buf)[k] = r4w();
                w2(4); WR(0x84,0);
                break;

        case 5: if (count > 512) WR(0x84,3);
  w3(0); w2(0x24);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = r4l();
                w2(4); WR(0x84,0);
                break;

        }
}
