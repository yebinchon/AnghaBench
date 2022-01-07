
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char fill_inbuf () ;
 unsigned char* inbuf ;
 scalar_t__ inptr ;
 scalar_t__ insize ;
 int kputs (char*) ;

__attribute__((used)) static inline unsigned char get_byte(void)
{
 unsigned char ch = inptr < insize ? inbuf[inptr++] : fill_inbuf();
 return ch;
}
