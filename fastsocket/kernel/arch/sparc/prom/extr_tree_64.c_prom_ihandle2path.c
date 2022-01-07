
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_OUT_BUF ;
 int P1275_INOUT (int,int) ;
 int P1275_SIZE (int) ;
 int p1275_cmd (char*,int,int,char*,int ) ;

int prom_ihandle2path(int handle, char *buffer, int bufsize)
{
 return p1275_cmd("instance-to-path",
    P1275_ARG(1,P1275_ARG_OUT_BUF)|
    P1275_INOUT(3, 1),
    handle, buffer, P1275_SIZE(bufsize));
}
