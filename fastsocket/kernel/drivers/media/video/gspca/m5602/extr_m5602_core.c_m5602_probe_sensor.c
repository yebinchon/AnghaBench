
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sd {TYPE_1__* sensor; } ;
struct TYPE_7__ {int (* probe ) (struct sd*) ;} ;


 int ENODEV ;
 int info (char*) ;
 TYPE_1__ mt9m111 ;
 TYPE_1__ ov7660 ;
 TYPE_1__ ov9650 ;
 TYPE_1__ po1030 ;
 TYPE_1__ s5k4aa ;
 TYPE_1__ s5k83a ;
 int stub1 (struct sd*) ;
 int stub2 (struct sd*) ;
 int stub3 (struct sd*) ;
 int stub4 (struct sd*) ;
 int stub5 (struct sd*) ;
 int stub6 (struct sd*) ;

__attribute__((used)) static int m5602_probe_sensor(struct sd *sd)
{

 sd->sensor = &po1030;
 if (!sd->sensor->probe(sd))
  return 0;


 sd->sensor = &mt9m111;
 if (!sd->sensor->probe(sd))
  return 0;


 sd->sensor = &s5k4aa;
 if (!sd->sensor->probe(sd))
  return 0;


 sd->sensor = &ov9650;
 if (!sd->sensor->probe(sd))
  return 0;


 sd->sensor = &ov7660;
 if (!sd->sensor->probe(sd))
  return 0;


 sd->sensor = &s5k83a;
 if (!sd->sensor->probe(sd))
  return 0;


 info("Failed to find a sensor");
 sd->sensor = ((void*)0);
 return -ENODEV;
}
