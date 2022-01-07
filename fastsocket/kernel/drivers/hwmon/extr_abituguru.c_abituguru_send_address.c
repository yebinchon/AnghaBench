
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct abituguru_data {scalar_t__ addr; scalar_t__ uguru_ready; } ;


 scalar_t__ ABIT_UGURU_CMD ;
 scalar_t__ ABIT_UGURU_DATA ;
 int ABIT_UGURU_DEBUG (int,char*,int) ;
 int ABIT_UGURU_RETRY_DELAY ;
 int ABIT_UGURU_STATUS_INPUT ;
 int EBUSY ;
 int EIO ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ abituguru_ready (struct abituguru_data*) ;
 scalar_t__ abituguru_wait (struct abituguru_data*,int ) ;
 int outb (scalar_t__,scalar_t__) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static int abituguru_send_address(struct abituguru_data *data,
 u8 bank_addr, u8 sensor_addr, int retries)
{


 int report_errors = retries;

 for (;;) {


  if (abituguru_ready(data) != 0)
   return -EIO;
  outb(bank_addr, data->addr + ABIT_UGURU_DATA);
  data->uguru_ready = 0;



  if (abituguru_wait(data, ABIT_UGURU_STATUS_INPUT)) {
   if (retries) {
    ABIT_UGURU_DEBUG(3, "timeout exceeded "
     "waiting for more input state, %d "
     "tries remaining\n", retries);
    set_current_state(TASK_UNINTERRUPTIBLE);
    schedule_timeout(ABIT_UGURU_RETRY_DELAY);
    retries--;
    continue;
   }
   if (report_errors)
    ABIT_UGURU_DEBUG(1, "timeout exceeded "
     "waiting for more input state "
     "(bank: %d)\n", (int)bank_addr);
   return -EBUSY;
  }
  outb(sensor_addr, data->addr + ABIT_UGURU_CMD);
  return 0;
 }
}
