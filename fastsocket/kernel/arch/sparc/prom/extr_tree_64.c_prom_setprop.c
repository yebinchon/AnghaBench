
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_IN_BUF ;
 int P1275_ARG_IN_STRING ;
 int P1275_INOUT (int,int) ;
 int P1275_SIZE (int) ;
 scalar_t__ ldom_domaining_enabled ;
 int ldom_set_var (char const*,char*) ;
 int p1275_cmd (char*,int,int,char const*,char*,int ) ;

int
prom_setprop(int node, const char *pname, char *value, int size)
{
 if (size == 0)
  return 0;
 if ((pname == 0) || (value == 0))
  return 0;







 return p1275_cmd ("setprop", P1275_ARG(1,P1275_ARG_IN_STRING)|
       P1275_ARG(2,P1275_ARG_IN_BUF)|
       P1275_INOUT(4, 1),
       node, pname, value, P1275_SIZE(size));
}
