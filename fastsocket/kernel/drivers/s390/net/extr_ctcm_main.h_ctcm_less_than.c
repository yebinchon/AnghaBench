
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static inline int ctcm_less_than(char *id1, char *id2)
{
 unsigned long dev1, dev2;

 id1 = id1 + 5;
 id2 = id2 + 5;

 dev1 = simple_strtoul(id1, &id1, 16);
 dev2 = simple_strtoul(id2, &id2, 16);

 return (dev1 < dev2);
}
