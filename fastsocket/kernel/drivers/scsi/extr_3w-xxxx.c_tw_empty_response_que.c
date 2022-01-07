
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 int TW_RESPONSE_QUEUE_REG_ADDR (int *) ;
 int TW_STATUS_REG_ADDR (int *) ;
 int TW_STATUS_RESPONSE_QUEUE_EMPTY ;
 int inl (int ) ;

__attribute__((used)) static void tw_empty_response_que(TW_Device_Extension *tw_dev)
{
 u32 status_reg_value, response_que_value;

 status_reg_value = inl(TW_STATUS_REG_ADDR(tw_dev));

 while ((status_reg_value & TW_STATUS_RESPONSE_QUEUE_EMPTY) == 0) {
  response_que_value = inl(TW_RESPONSE_QUEUE_REG_ADDR(tw_dev));
  status_reg_value = inl(TW_STATUS_REG_ADDR(tw_dev));
 }
}
