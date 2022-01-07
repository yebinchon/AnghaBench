
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct abituguru_data {scalar_t__ addr; } ;


 scalar_t__ ABIT_UGURU_CMD ;
 int ABIT_UGURU_DEBUG (int,char*,int,int) ;
 int ABIT_UGURU_STATUS_READ ;
 int abituguru_ready (struct abituguru_data*) ;
 int abituguru_send_address (struct abituguru_data*,scalar_t__,scalar_t__,int) ;
 scalar_t__ abituguru_wait (struct abituguru_data*,int ) ;
 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static int abituguru_read(struct abituguru_data *data,
 u8 bank_addr, u8 sensor_addr, u8 *buf, int count, int retries)
{
 int i;


 i = abituguru_send_address(data, bank_addr, sensor_addr, retries);
 if (i)
  return i;


 for (i = 0; i < count; i++) {
  if (abituguru_wait(data, ABIT_UGURU_STATUS_READ)) {
   ABIT_UGURU_DEBUG(retries ? 1 : 3,
    "timeout exceeded waiting for "
    "read state (bank: %d, sensor: %d)\n",
    (int)bank_addr, (int)sensor_addr);
   break;
  }
  buf[i] = inb(data->addr + ABIT_UGURU_CMD);
 }


 abituguru_ready(data);

 return i;
}
