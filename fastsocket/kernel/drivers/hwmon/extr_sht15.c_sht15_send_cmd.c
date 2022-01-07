
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int dummy; } ;


 int sht15_send_byte (struct sht15_data*,int ) ;
 int sht15_transmission_start (struct sht15_data*) ;
 int sht15_wait_for_response (struct sht15_data*) ;

__attribute__((used)) static int sht15_send_cmd(struct sht15_data *data, u8 cmd)
{
 int ret = 0;
 sht15_transmission_start(data);
 sht15_send_byte(data, cmd);
 ret = sht15_wait_for_response(data);
 return ret;
}
