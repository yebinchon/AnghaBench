
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int,int ) ;
 int P1275_ARG_OUT_32B ;
 int P1275_INOUT (int,int ) ;
 int p1275_cmd (char*,int,int,char*,char*) ;

inline char *prom_firstprop(int node, char *buffer)
{
 *buffer = 0;
 if(node == -1) return buffer;
 p1275_cmd ("nextprop", P1275_ARG(2,P1275_ARG_OUT_32B)|
          P1275_INOUT(3, 0),
          node, (char *) 0x0, buffer);
 return buffer;
}
