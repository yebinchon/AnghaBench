
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int cec4 ;
 int w0 (int) ;
 int w2 (int) ;
 int w4 (char) ;
 int w4l (int ) ;
 int w4w (int ) ;

__attribute__((used)) static void frpw_write_block( PIA *pi, char * buf, int count )

{ int k;

 switch(pi->mode) {

 case 0:
 case 1:
 case 2: w2(4); w0(8); cec4; w2(5);
         for (k=0;k<count;k++) {
   w0(buf[k]);
   w2(7);w2(5);
  }
  w2(4);
  break;

 case 3: w2(4); w0(0xc8); cec4; w2(5);
  for (k=0;k<count;k++) w4(buf[k]);
  w2(4);
  break;

        case 4: w2(4); w0(0xc8); cec4; w2(5);
                for (k=0;k<count/2;k++) w4w(((u16 *)buf)[k]);
                w2(4);
                break;

        case 5: w2(4); w0(0xc8); cec4; w2(5);
                for (k=0;k<count/4;k++) w4l(((u32 *)buf)[k]);
                w2(4);
                break;
 }
}
