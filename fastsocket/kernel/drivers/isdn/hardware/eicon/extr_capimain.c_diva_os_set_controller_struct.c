
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {int owner; int ctr_read_proc; int * reset_ctr; int * load_firmware; int driver_name; } ;


 int DRIVERLNAME ;
 int THIS_MODULE ;
 int diva_ctl_read_proc ;

void diva_os_set_controller_struct(struct capi_ctr *ctrl)
{
 ctrl->driver_name = DRIVERLNAME;
 ctrl->load_firmware = ((void*)0);
 ctrl->reset_ctr = ((void*)0);
 ctrl->ctr_read_proc = diva_ctl_read_proc;
 ctrl->owner = THIS_MODULE;
}
