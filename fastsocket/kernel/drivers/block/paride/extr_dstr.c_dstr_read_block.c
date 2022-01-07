
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int P2 ;
 int P3 ;
 char j44 (int,int) ;
 char r0 () ;
 int r1 () ;
 char r4 () ;
 int r4l () ;
 int r4w () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void dstr_read_block( PIA *pi, char * buf, int count )

{ int k, a, b;

        w0(0x81); P1;
        if (pi->mode) { w0(0x19); } else { w0(9); }
 P2; w0(0x82); P1; P3; w0(0x20); P1;

        switch (pi->mode) {

        case 0: for (k=0;k<count;k++) {
                        w2(6); a = r1(); w2(4);
                        w2(6); b = r1(); w2(4);
                        buf[k] = j44(a,b);
                }
                break;

        case 1: w0(0);
                for (k=0;k<count;k++) {
                        w2(0x26); buf[k] = r0(); w2(0x24);
                }
                w2(4);
                break;

        case 2: w2(0x24);
                for (k=0;k<count;k++) buf[k] = r4();
                w2(4);
                break;

        case 3: w2(0x24);
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = r4w();
                w2(4);
                break;

        case 4: w2(0x24);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = r4l();
                w2(4);
                break;

        }
}
