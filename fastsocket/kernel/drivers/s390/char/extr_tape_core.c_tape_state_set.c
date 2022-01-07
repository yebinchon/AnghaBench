
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int tape_state; char const* first_minor; int state_change_wq; } ;
typedef enum tape_state { ____Placeholder_tape_state } tape_state ;


 int DBF_EVENT (int,char*,...) ;
 int TS_NOT_OPER ;
 int TS_SIZE ;
 char** tape_state_verbose ;
 int wake_up (int *) ;

void
tape_state_set(struct tape_device *device, enum tape_state newstate)
{
 const char *str;

 if (device->tape_state == TS_NOT_OPER) {
  DBF_EVENT(3, "ts_set err: not oper\n");
  return;
 }
 DBF_EVENT(4, "ts. dev:	%x\n", device->first_minor);
 DBF_EVENT(4, "old ts:\t\n");
 if (device->tape_state < TS_SIZE && device->tape_state >=0 )
  str = tape_state_verbose[device->tape_state];
 else
  str = "UNKNOWN TS";
 DBF_EVENT(4, "%s\n", str);
 DBF_EVENT(4, "new ts:\t\n");
 if (newstate < TS_SIZE && newstate >= 0)
  str = tape_state_verbose[newstate];
 else
  str = "UNKNOWN TS";
 DBF_EVENT(4, "%s\n", str);
 device->tape_state = newstate;
 wake_up(&device->state_change_wq);
}
