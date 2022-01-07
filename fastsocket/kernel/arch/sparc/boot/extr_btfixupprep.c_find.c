
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int * rel; int name; scalar_t__ setinitval; } ;
typedef TYPE_1__ btfixup ;


 int MAXSYMS ;
 TYPE_1__* array ;
 int exit (int) ;
 int fatal () ;
 int fprintf (int ,char*,int) ;
 int last ;
 int stderr ;
 int strcmp (int ,char*) ;
 int strdup (char*) ;

__attribute__((used)) static btfixup *find(int type, char *name)
{
 int i;
 for (i = 0; i < last; i++) {
  if (array[i].type == type && !strcmp(array[i].name, name))
   return array + i;
 }
 array[last].type = type;
 array[last].name = strdup(name);
 array[last].setinitval = 0;
 if (!array[last].name) fatal();
 array[last].rel = ((void*)0);
 last++;
 if (last >= MAXSYMS) {
  fprintf(stderr, "Ugh. Something strange. More than %d different BTFIXUP symbols\n", MAXSYMS);
  exit(1);
 }
 return array + last - 1;
}
