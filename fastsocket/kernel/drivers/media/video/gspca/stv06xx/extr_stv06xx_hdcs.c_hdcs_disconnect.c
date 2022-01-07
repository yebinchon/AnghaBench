
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor_priv; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*) ;
 int kfree (int ) ;

__attribute__((used)) static void hdcs_disconnect(struct sd *sd)
{
 PDEBUG(D_PROBE, "Disconnecting the sensor");
 kfree(sd->sensor_priv);
}
