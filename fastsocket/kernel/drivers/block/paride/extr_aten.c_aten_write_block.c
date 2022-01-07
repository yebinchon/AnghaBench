
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIA ;


 int w0 (char) ;
 int w2 (int) ;

__attribute__((used)) static void aten_write_block( PIA *pi, char * buf, int count )

{ int k;

 w0(0x88); w2(0xe); w2(6);
 for (k=0;k<count/2;k++) {
  w0(buf[2*k+1]); w2(0xe); w2(6);
  w0(buf[2*k]); w2(7); w2(6);
 }
 w2(0xc);
}
