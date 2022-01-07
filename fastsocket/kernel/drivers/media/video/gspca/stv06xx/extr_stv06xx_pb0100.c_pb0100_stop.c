
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int BIT (int) ;
 int D_STREAM ;
 int PB_ABORTFRAME ;
 int PB_CONTROL ;
 int PDEBUG (int ,char*) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_stop(struct sd *sd)
{
 int err;

 err = stv06xx_write_sensor(sd, PB_ABORTFRAME, 1);

 if (err < 0)
  goto out;


 err = stv06xx_write_sensor(sd, PB_CONTROL, BIT(5)|BIT(3));

 PDEBUG(D_STREAM, "Halting stream");
out:
 return (err < 0) ? err : 0;
}
