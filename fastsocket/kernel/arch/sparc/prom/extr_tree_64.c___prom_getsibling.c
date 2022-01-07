
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (int ,int ,int) ;
 int prom_peer_name ;

inline int __prom_getsibling(int node)
{
 return p1275_cmd(prom_peer_name, P1275_INOUT(1, 1), node);
}
