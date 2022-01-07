
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ brdtype; int short_name; } ;


 int NUM_SUPPORTED_BOARDS ;
 TYPE_1__* netxen_boards ;
 int strcpy (char*,int ) ;

__attribute__((used)) static inline void get_brd_name_by_type(u32 type, char *name)
{
 int i, found = 0;
 for (i = 0; i < NUM_SUPPORTED_BOARDS; ++i) {
  if (netxen_boards[i].brdtype == type) {
   strcpy(name, netxen_boards[i].short_name);
   found = 1;
   break;
  }

 }
 if (!found)
  name = "Unknown";
}
