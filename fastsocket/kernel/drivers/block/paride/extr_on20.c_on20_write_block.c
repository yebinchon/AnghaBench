
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int op (int) ;
 int vl (int) ;
 int w0 (char) ;
 int w2 (int) ;

__attribute__((used)) static void on20_write_block( PIA *pi, char * buf, int count )

{ int k;

 op(1); vl(1); op(0);

 for (k=0;k<count;k++) { w2(5); w0(buf[k]); w2(7); }
 w2(4);
}
