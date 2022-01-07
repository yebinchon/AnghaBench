
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_file_private {scalar_t__ my_pid; struct agp_file_private* next; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {struct agp_file_private* file_priv_list; } ;


 TYPE_1__ agp_fe ;

struct agp_file_private *agp_find_private(pid_t pid)
{
 struct agp_file_private *curr;

 curr = agp_fe.file_priv_list;

 while (curr != ((void*)0)) {
  if (curr->my_pid == pid)
   return curr;
  curr = curr->next;
 }

 return ((void*)0);
}
