
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ coordinateMode; } ;
struct TYPE_4__ {int modelCode; int odmCode; int firmwareCode; } ;
struct aiptek {scalar_t__ eventCount; int diagnostic; TYPE_3__ curSetting; TYPE_2__* inputdev; TYPE_1__ features; } ;
struct TYPE_5__ {int* absmax; scalar_t__* absmin; } ;


 size_t ABS_PRESSURE ;
 size_t ABS_X ;
 size_t ABS_Y ;
 scalar_t__ AIPTEK_COORDINATE_ABSOLUTE_MODE ;
 int AIPTEK_DIAGNOSTIC_NA ;
 int aiptek_command (struct aiptek*,int,int) ;
 int aiptek_query (struct aiptek*,int,int) ;

__attribute__((used)) static int aiptek_program_tablet(struct aiptek *aiptek)
{
 int ret;

 if ((ret = aiptek_command(aiptek, 0x18, 0x04)) < 0)
  return ret;


 if ((ret = aiptek_query(aiptek, 0x02, 0x00)) < 0)
  return ret;
 aiptek->features.modelCode = ret & 0xff;


 if ((ret = aiptek_query(aiptek, 0x03, 0x00)) < 0)
  return ret;
 aiptek->features.odmCode = ret;


 if ((ret = aiptek_query(aiptek, 0x04, 0x00)) < 0)
  return ret;
 aiptek->features.firmwareCode = ret;


 if ((ret = aiptek_query(aiptek, 0x01, 0x00)) < 0)
  return ret;
 aiptek->inputdev->absmin[ABS_X] = 0;
 aiptek->inputdev->absmax[ABS_X] = ret - 1;


 if ((ret = aiptek_query(aiptek, 0x01, 0x01)) < 0)
  return ret;
 aiptek->inputdev->absmin[ABS_Y] = 0;
 aiptek->inputdev->absmax[ABS_Y] = ret - 1;


 if ((ret = aiptek_query(aiptek, 0x08, 0x00)) < 0)
  return ret;
 aiptek->inputdev->absmin[ABS_PRESSURE] = 0;
 aiptek->inputdev->absmax[ABS_PRESSURE] = ret - 1;




 if (aiptek->curSetting.coordinateMode ==
     AIPTEK_COORDINATE_ABSOLUTE_MODE) {

  if ((ret = aiptek_command(aiptek, 0x10, 0x01)) < 0) {
   return ret;
  }
 } else {

  if ((ret = aiptek_command(aiptek, 0x10, 0x00)) < 0) {
   return ret;
  }
 }


 if ((ret = aiptek_command(aiptek, 0x11, 0x02)) < 0)
  return ret;







 if ((ret = aiptek_command(aiptek, 0x12, 0xff)) < 0)
  return ret;



 aiptek->diagnostic = AIPTEK_DIAGNOSTIC_NA;
 aiptek->eventCount = 0;

 return 0;
}
