
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char**) ;
 int printk (char*,...) ;

__attribute__((used)) static void i2o_report_common_status(u8 req_status)
{
 static char *REPLY_STATUS[] = {
  "SUCCESS",
  "ABORT_DIRTY",
  "ABORT_NO_DATA_TRANSFER",
  "ABORT_PARTIAL_TRANSFER",
  "ERROR_DIRTY",
  "ERROR_NO_DATA_TRANSFER",
  "ERROR_PARTIAL_TRANSFER",
  "PROCESS_ABORT_DIRTY",
  "PROCESS_ABORT_NO_DATA_TRANSFER",
  "PROCESS_ABORT_PARTIAL_TRANSFER",
  "TRANSACTION_ERROR",
  "PROGRESS_REPORT"
 };

 if (req_status >= ARRAY_SIZE(REPLY_STATUS))
  printk("RequestStatus = %0#2x", req_status);
 else
  printk("%s", REPLY_STATUS[req_status]);
}
