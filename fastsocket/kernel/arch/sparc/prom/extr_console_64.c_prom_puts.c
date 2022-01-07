
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_IN_BUF ;
 int P1275_INOUT (int,int) ;
 int P1275_SIZE (int) ;
 int p1275_cmd (char*,int,int ,char const*,int ) ;
 int prom_stdout ;

void
prom_puts(const char *s, int len)
{
 p1275_cmd("write", P1275_ARG(1,P1275_ARG_IN_BUF)|
      P1275_INOUT(3,1),
      prom_stdout, s, P1275_SIZE(len));
}
