
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_IN_BUF ;
 int P1275_INOUT (int,int) ;
 int P1275_SIZE (int) ;
 int p1275_cmd (char*,int,int ,char*,int ) ;
 int prom_stdout ;

inline int
prom_nbputchar(char c)
{
 char outc;

 outc = c;
 if (p1275_cmd("write", P1275_ARG(1,P1275_ARG_IN_BUF)|
          P1275_INOUT(3,1),
          prom_stdout, &outc, P1275_SIZE(1)) == 1)
  return 0;
 else
  return -1;
}
