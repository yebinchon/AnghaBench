
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9968cf_device {int dummy; } ;
struct ovcamchip_control {int id; int value; } ;


 int OVCAMCHIP_CMD_S_CTRL ;
 int w9968cf_sensor_cmd (struct w9968cf_device*,int ,struct ovcamchip_control*) ;

__attribute__((used)) static int
w9968cf_sensor_set_control(struct w9968cf_device* cam, int cid, int val)
{
 struct ovcamchip_control ctl;
 int err;

 ctl.id = cid;
 ctl.value = val;

 err = w9968cf_sensor_cmd(cam, OVCAMCHIP_CMD_S_CTRL, &ctl);

 return err;
}
