
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int cec4 ;
 int* cont_map ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void frpw_write_regr( PIA *pi, int cont, int regr, int val)

{ int r;

        r = regr + cont_map[cont];

 w2(4); w0(r); cec4;
 w0(val);
 w2(5);w2(7);w2(5);w2(4);
}
