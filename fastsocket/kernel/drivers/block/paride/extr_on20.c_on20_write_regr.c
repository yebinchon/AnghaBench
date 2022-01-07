
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int op (int) ;
 int vl (int) ;

__attribute__((used)) static void on20_write_regr( PIA *pi, int cont, int regr, int val )

{ int r;

 r = (regr<<2) + 1 + cont;

 op(1); vl(r);
 op(0); vl(val);
 op(0); vl(val);
}
