
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 int TW_MAX_RESPONSE_DRAIN ;
 int TW_RESPONSE_QUEUE_REG_ADDR (int *) ;
 int TW_STATUS_REG_ADDR (int *) ;
 int TW_STATUS_RESPONSE_QUEUE_EMPTY ;
 int readl (int ) ;

__attribute__((used)) static int twa_empty_response_queue(TW_Device_Extension *tw_dev)
{
 u32 status_reg_value, response_que_value;
 int count = 0, retval = 1;

 status_reg_value = readl(TW_STATUS_REG_ADDR(tw_dev));

 while (((status_reg_value & TW_STATUS_RESPONSE_QUEUE_EMPTY) == 0) && (count < TW_MAX_RESPONSE_DRAIN)) {
  response_que_value = readl(TW_RESPONSE_QUEUE_REG_ADDR(tw_dev));
  status_reg_value = readl(TW_STATUS_REG_ADDR(tw_dev));
  count++;
 }
 if (count == TW_MAX_RESPONSE_DRAIN)
  goto out;

 retval = 0;
out:
 return retval;
}
