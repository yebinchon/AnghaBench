
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_devclose (int) ;
 int prom_devopen (char const*) ;
 int prom_inst2pkg (int) ;

int
prom_pathtoinode(const char *path)
{
 int node, inst;

 inst = prom_devopen (path);
 if (inst == 0) return 0;
 node = prom_inst2pkg (inst);
 prom_devclose (inst);
 if (node == -1) return 0;
 return node;
}
