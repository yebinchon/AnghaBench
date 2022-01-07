
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_IN_STRING ;
 int P1275_ARG_OUT_32B ;
 int P1275_INOUT (int,int ) ;
 int p1275_cmd (char*,int,int,char const*,char*) ;
 int strcpy (char*,char const*) ;

inline char *prom_nextprop(int node, const char *oprop, char *buffer)
{
 char buf[32];

 if(node == -1) {
  *buffer = 0;
  return buffer;
 }
 if (oprop == buffer) {
  strcpy (buf, oprop);
  oprop = buf;
 }
 p1275_cmd ("nextprop", P1275_ARG(1,P1275_ARG_IN_STRING)|
        P1275_ARG(2,P1275_ARG_OUT_32B)|
        P1275_INOUT(3, 0),
        node, oprop, buffer);
 return buffer;
}
