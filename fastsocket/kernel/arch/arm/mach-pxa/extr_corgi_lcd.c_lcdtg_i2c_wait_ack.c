
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int lcdtg_i2c_send_bit (int ) ;

__attribute__((used)) static void lcdtg_i2c_wait_ack(u8 base)
{
 lcdtg_i2c_send_bit(base);
}
