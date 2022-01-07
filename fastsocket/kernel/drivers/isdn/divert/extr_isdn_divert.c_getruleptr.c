
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflect_struc {struct deflect_struc* next; int rule; } ;
typedef int divert_rule ;


 struct deflect_struc* table_head ;

divert_rule *getruleptr(int idx)
{ struct deflect_struc *ds = table_head;

  if (idx < 0) return(((void*)0));
  while ((ds) && (idx >= 0))
   { if (!(idx--))
      { return(&ds->rule);
        break;
      }
     ds = ds->next;
   }
  return(((void*)0));
}
