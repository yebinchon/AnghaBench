
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* sdev_states ;

const char *scsi_device_state_name(enum scsi_device_state state)
{
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(sdev_states); i++) {
  if (sdev_states[i].value == state) {
   name = sdev_states[i].name;
   break;
  }
 }
 return name;
}
