
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_fan_control {scalar_t__ cpu_fan_speed; scalar_t__ system_fan_speed; scalar_t__ psupply_fan_on; int client; int index; } ;


 int CPU_FAN_REG ;
 scalar_t__ FAN_SPEED_MAX ;
 scalar_t__ FAN_SPEED_MIN ;
 scalar_t__ PSUPPLY_FAN_OFF ;
 scalar_t__ PSUPPLY_FAN_ON ;
 int PSUPPLY_FAN_REG ;
 int SYS_FAN_REG ;
 int bbc_i2c_writeb (int ,scalar_t__,int ) ;
 int printk (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void set_fan_speeds(struct bbc_fan_control *fp)
{



 if (fp->cpu_fan_speed < FAN_SPEED_MIN)
  fp->cpu_fan_speed = FAN_SPEED_MIN;
 if (fp->cpu_fan_speed > FAN_SPEED_MAX)
  fp->cpu_fan_speed = FAN_SPEED_MAX;
 if (fp->system_fan_speed < FAN_SPEED_MIN)
  fp->system_fan_speed = FAN_SPEED_MIN;
 if (fp->system_fan_speed > FAN_SPEED_MAX)
  fp->system_fan_speed = FAN_SPEED_MAX;






 bbc_i2c_writeb(fp->client, fp->cpu_fan_speed, CPU_FAN_REG);
 bbc_i2c_writeb(fp->client, fp->system_fan_speed, SYS_FAN_REG);
 bbc_i2c_writeb(fp->client,
         (fp->psupply_fan_on ?
   PSUPPLY_FAN_ON : PSUPPLY_FAN_OFF),
         PSUPPLY_FAN_REG);
}
