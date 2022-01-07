
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int* inbuf ;
 int inptr ;
 int* input_data ;
 scalar_t__ input_len ;
 scalar_t__ insize ;

__attribute__((used)) static int fill_inbuf()
{
 if (insize != 0)
  error("ran out of input data\n");

 inbuf = input_data;
 insize = input_len;
 inptr = 1;
 return inbuf[0];
}
