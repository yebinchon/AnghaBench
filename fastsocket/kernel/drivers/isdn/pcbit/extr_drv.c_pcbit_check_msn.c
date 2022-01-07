
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {struct msn_entry* msn_list; } ;
struct msn_entry {int * msn; struct msn_entry* next; } ;


 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int pcbit_check_msn(struct pcbit_dev *dev, char *msn)
{
 struct msn_entry *ptr;

 for (ptr=dev->msn_list; ptr; ptr=ptr->next) {

  if (ptr->msn == ((void*)0))
   return 1;

  if (strcmp(ptr->msn, msn) == 0)
   return 1;
 }

 return 0;
}
