
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_id {char const* id; struct pnp_id* next; } ;


 int compare_func (char const*,char const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

int compare_pnp_id(struct pnp_id *pos, const char *id)
{
 if (!pos || !id || (strlen(id) != 7))
  return 0;
 if (memcmp(id, "ANYDEVS", 7) == 0)
  return 1;
 while (pos) {
  if (memcmp(pos->id, id, 3) == 0)
   if (compare_func(pos->id, id) == 1)
    return 1;
  pos = pos->next;
 }
 return 0;
}
