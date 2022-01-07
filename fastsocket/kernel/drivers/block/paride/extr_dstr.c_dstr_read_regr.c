
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ PIA ;


 int P1 ;
 int P2 ;
 int* cont_map ;
 int j44 (int,int) ;
 int r0 () ;
 int r1 () ;
 int r4 () ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static int dstr_read_regr( PIA *pi, int cont, int regr )

{ int a, b, r;

        r = regr + cont_map[cont];

 w0(0x81); P1;
 if (pi->mode) { w0(0x11); } else { w0(1); }
 P2; w0(r); P1;

        switch (pi->mode) {

        case 0: w2(6); a = r1(); w2(4); w2(6); b = r1(); w2(4);
                return j44(a,b);

        case 1: w0(0); w2(0x26); a = r0(); w2(4);
                return a;

 case 2:
 case 3:
        case 4: w2(0x24); a = r4(); w2(4);
                return a;

        }
        return -1;
}
