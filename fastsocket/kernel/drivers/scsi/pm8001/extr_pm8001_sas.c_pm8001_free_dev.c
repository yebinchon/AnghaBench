
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_device {int * sas_device; int device_id; int dev_type; int id; } ;


 int PM8001_MAX_DEVICES ;
 int SAS_PHY_UNUSED ;
 int memset (struct pm8001_device*,int ,int) ;

__attribute__((used)) static void pm8001_free_dev(struct pm8001_device *pm8001_dev)
{
 u32 id = pm8001_dev->id;
 memset(pm8001_dev, 0, sizeof(*pm8001_dev));
 pm8001_dev->id = id;
 pm8001_dev->dev_type = SAS_PHY_UNUSED;
 pm8001_dev->device_id = PM8001_MAX_DEVICES;
 pm8001_dev->sas_device = ((void*)0);
}
