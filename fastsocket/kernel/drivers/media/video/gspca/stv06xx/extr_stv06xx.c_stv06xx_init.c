
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct sd*) ;int (* dump ) (struct sd*) ;} ;


 int D_PROBE ;
 int PDEBUG (int ,char*) ;
 scalar_t__ dump_sensor ;
 int msleep (int) ;
 int stub1 (struct sd*) ;
 int stub2 (struct sd*) ;

__attribute__((used)) static int stv06xx_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int err;

 PDEBUG(D_PROBE, "Initializing camera");



 msleep(250);

 err = sd->sensor->init(sd);

 if (dump_sensor && sd->sensor->dump)
  sd->sensor->dump(sd);

 return (err < 0) ? err : 0;
}
