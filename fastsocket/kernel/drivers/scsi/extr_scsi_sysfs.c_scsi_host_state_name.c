
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum scsi_host_state { ____Placeholder_scsi_host_state } scsi_host_state ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* shost_states ;

const char *scsi_host_state_name(enum scsi_host_state state)
{
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(shost_states); i++) {
  if (shost_states[i].value == state) {
   name = shost_states[i].name;
   break;
  }
 }
 return name;
}
