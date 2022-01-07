
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor_priv; int * sensor; } ;


 int kfree (int ) ;
 int ov7660_stop (struct sd*) ;

void ov7660_disconnect(struct sd *sd)
{
 ov7660_stop(sd);

 sd->sensor = ((void*)0);
 kfree(sd->sensor_priv);
}
