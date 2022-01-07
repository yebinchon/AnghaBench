
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int (* stop ) (struct sd*) ;} ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int STV_ISO_ENABLE ;
 int stub1 (struct sd*) ;
 int stv06xx_write_bridge (struct sd*,int ,int ) ;

__attribute__((used)) static void stv06xx_stopN(struct gspca_dev *gspca_dev)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;


 err = stv06xx_write_bridge(sd, STV_ISO_ENABLE, 0);
 if (err < 0)
  goto out;

 err = sd->sensor->stop(sd);

out:
 if (err < 0)
  PDEBUG(D_STREAM, "Failed to stop stream");
 else
  PDEBUG(D_STREAM, "Stopped streaming");
}
