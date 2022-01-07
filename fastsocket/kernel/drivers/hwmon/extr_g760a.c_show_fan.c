
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g760a_data {int fan_sta; int update_lock; int fan_div; int clk; int act_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int G760A_REG_FAN_STA_RPM_LOW ;
 struct g760a_data* g760a_update_client (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int rpm_from_cnt (int ,int ,int ) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev, struct device_attribute *da,
   char *buf)
{
 struct g760a_data *data = g760a_update_client(dev);
 unsigned int rpm = 0;

 mutex_lock(&data->update_lock);
 if (!(data->fan_sta & G760A_REG_FAN_STA_RPM_LOW))
  rpm = rpm_from_cnt(data->act_cnt, data->clk, data->fan_div);
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%d\n", rpm);
}
