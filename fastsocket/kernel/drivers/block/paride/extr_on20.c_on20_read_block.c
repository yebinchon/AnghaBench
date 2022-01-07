
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
typedef TYPE_1__ PIA ;


 char j44 (int,int) ;
 int op (int) ;
 char r0 () ;
 int r1 () ;
 int vl (int) ;
 int w2 (int) ;

__attribute__((used)) static void on20_read_block( PIA *pi, char * buf, int count )

{ int k, l, h;

 op(1); vl(1); op(0);

 for (k=0;k<count;k++)
     if (pi->mode) {
  w2(4); w2(0x26); buf[k] = r0();
     } else {
  w2(6); l = r1(); w2(4);
  w2(6); h = r1(); w2(4);
  buf[k] = j44(l,h);
     }
 w2(4);
}
