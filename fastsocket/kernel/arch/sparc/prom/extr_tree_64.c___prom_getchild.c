
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (char*,int ,int) ;

inline int __prom_getchild(int node)
{
 return p1275_cmd ("child", P1275_INOUT(1, 1), node);
}
