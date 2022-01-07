
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int* cont_map ;
 int w0 (int) ;
 int w2 (int) ;
 int w3 (int) ;
 int w4 (int) ;

__attribute__((used)) static void epat_write_regr( PIA *pi, int cont, int regr, int val)

{ int r;

 r = regr + cont_map[cont];

 switch (pi->mode) {

 case 0:
 case 1:
 case 2: w0(0x60+r); w2(1); w0(val); w2(4);
  break;

 case 3:
 case 4:
 case 5: w3(0x40+r); w4(val);
  break;

 }
}
