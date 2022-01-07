
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int lcdtg_i2c_send_byte (int,int) ;
 int lcdtg_i2c_send_start (int) ;
 int lcdtg_i2c_send_stop (int) ;
 int lcdtg_i2c_wait_ack (int) ;

__attribute__((used)) static void lcdtg_set_common_voltage(u8 base_data, u8 data)
{

 lcdtg_i2c_send_start(base_data);
 lcdtg_i2c_send_byte(base_data, 0x9c);
 lcdtg_i2c_wait_ack(base_data);
 lcdtg_i2c_send_byte(base_data, 0x00);
 lcdtg_i2c_wait_ack(base_data);
 lcdtg_i2c_send_byte(base_data, data);
 lcdtg_i2c_wait_ack(base_data);
 lcdtg_i2c_send_stop(base_data);
}
