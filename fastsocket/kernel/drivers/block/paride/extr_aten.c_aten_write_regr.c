
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int* cont_map ;
 int w0 (int) ;
 int w2 (int) ;

__attribute__((used)) static void aten_write_regr( PIA *pi, int cont, int regr, int val)

{ int r;

 r = regr + cont_map[cont] + 0x80;

 w0(r); w2(0xe); w2(6); w0(val); w2(7); w2(6); w2(0xc);
}
