
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {int sch_no; int ssid; } ;
struct TYPE_3__ {int st; } ;
struct TYPE_4__ {TYPE_1__ pmcw; } ;
struct subchannel {int st; int * lock; struct subchannel_id schid; TYPE_2__ schib; int reg_mutex; } ;


 int CIO_MSG_EVENT (int,char*,int ,int,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int ENXIO ;


 int cio_create_sch_lock (struct subchannel*) ;
 int * cio_get_console_lock () ;
 scalar_t__ cio_is_console (struct subchannel_id) ;
 int cio_validate_io_subchannel (struct subchannel*) ;
 int cio_validate_msg_subchannel (struct subchannel*) ;
 int kfree (int *) ;
 int memset (struct subchannel*,int ,int) ;
 int mutex_init (int *) ;
 int sprintf (char*,char*,int) ;
 int stsch_err (struct subchannel_id,TYPE_2__*) ;

int cio_validate_subchannel(struct subchannel *sch, struct subchannel_id schid)
{
 char dbf_txt[15];
 int ccode;
 int err;

 sprintf(dbf_txt, "valsch%x", schid.sch_no);
 CIO_TRACE_EVENT(4, dbf_txt);


 memset(sch, 0, sizeof(struct subchannel));

 sch->schid = schid;
 if (cio_is_console(schid)) {
  sch->lock = cio_get_console_lock();
 } else {
  err = cio_create_sch_lock(sch);
  if (err)
   goto out;
 }
 mutex_init(&sch->reg_mutex);







 ccode = stsch_err (schid, &sch->schib);
 if (ccode) {
  err = (ccode == 3) ? -ENXIO : ccode;
  goto out;
 }

 sch->st = sch->schib.pmcw.st;

 switch (sch->st) {
 case 129:
  err = cio_validate_io_subchannel(sch);
  break;
 case 128:
  err = cio_validate_msg_subchannel(sch);
  break;
 default:
  err = 0;
 }
 if (err)
  goto out;

 CIO_MSG_EVENT(4, "Subchannel 0.%x.%04x reports subchannel type %04X\n",
        sch->schid.ssid, sch->schid.sch_no, sch->st);
 return 0;
out:
 if (!cio_is_console(schid))
  kfree(sch->lock);
 sch->lock = ((void*)0);
 return err;
}
