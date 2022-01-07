
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NODES ;
 int highest_node ;
 int memset (int*,int ,int) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static void decode_numa_list(int *numa, char *t)
{
 int node;
 int nr;

 memset(numa, 0, MAX_NODES * sizeof(int));

 if (!t)
  return;

 while (*t == 'N') {
  t++;
  node = strtoul(t, &t, 10);
  if (*t == '=') {
   t++;
   nr = strtoul(t, &t, 10);
   numa[node] = nr;
   if (node > highest_node)
    highest_node = node;
  }
  while (*t == ' ')
   t++;
 }
}
