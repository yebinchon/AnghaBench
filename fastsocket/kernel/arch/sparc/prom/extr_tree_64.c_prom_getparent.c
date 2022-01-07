
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (char*,int ,int) ;

inline int prom_getparent(int node)
{
 int cnode;

 if(node == -1) return 0;
 cnode = p1275_cmd ("parent", P1275_INOUT(1, 1), node);
 if(cnode == -1) return 0;
 return (int)cnode;
}
