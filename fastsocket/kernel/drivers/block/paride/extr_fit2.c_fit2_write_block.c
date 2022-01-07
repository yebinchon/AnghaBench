
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int w0 (char) ;
 int w2 (int) ;

__attribute__((used)) static void fit2_write_block( PIA *pi, char * buf, int count )

{ int k;


 w2(0xc); w0(0);
 for (k=0;k<count/2;k++) {
  w2(4); w0(buf[2*k]);
  w2(5); w0(buf[2*k+1]);
 }
 w2(4);
}
