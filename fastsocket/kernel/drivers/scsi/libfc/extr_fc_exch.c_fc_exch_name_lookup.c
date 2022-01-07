
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *fc_exch_name_lookup(unsigned int op, char **table,
           unsigned int max_index)
{
 const char *name = ((void*)0);

 if (op < max_index)
  name = table[op];
 if (!name)
  name = "unknown";
 return name;
}
