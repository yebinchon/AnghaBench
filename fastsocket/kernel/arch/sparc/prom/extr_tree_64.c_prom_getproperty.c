
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_IN_STRING ;
 int P1275_ARG_OUT_BUF ;
 int P1275_INOUT (int,int) ;
 int P1275_SIZE (int) ;
 int p1275_cmd (int ,int,int,char const*,char*,int ) ;
 int prom_getprop_name ;
 int prom_getproplen (int,char const*) ;

inline int prom_getproperty(int node, const char *prop,
       char *buffer, int bufsize)
{
 int plen;

 plen = prom_getproplen(node, prop);
 if ((plen > bufsize) || (plen == 0) || (plen == -1)) {
  return -1;
 } else {

  return p1275_cmd(prom_getprop_name,
     P1275_ARG(1,P1275_ARG_IN_STRING)|
     P1275_ARG(2,P1275_ARG_OUT_BUF)|
     P1275_INOUT(4, 1),
     node, prop, buffer, P1275_SIZE(plen));
 }
}
