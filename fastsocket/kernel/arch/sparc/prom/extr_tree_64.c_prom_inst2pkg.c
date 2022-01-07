
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int,int) ;
 int p1275_cmd (char*,int ,int) ;

inline int prom_inst2pkg(int inst)
{
 int node;

 node = p1275_cmd ("instance-to-package", P1275_INOUT(1, 1), inst);
 if (node == -1) return 0;
 return node;
}
