
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {struct msn_entry* msn_list; } ;
struct msn_entry {struct msn_entry* next; } ;


 int kfree (struct msn_entry*) ;

__attribute__((used)) static void pcbit_clear_msn(struct pcbit_dev *dev)
{
 struct msn_entry *ptr, *back;

 for (ptr=dev->msn_list; ptr; )
 {
  back = ptr->next;
  kfree(ptr);
  ptr = back;
 }

 dev->msn_list = ((void*)0);
}
