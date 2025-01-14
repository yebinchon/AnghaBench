
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ehea_adapter {int handle; } ;


 int EHEA_BMASK_GET (int ,int ) ;
 int ERROR_DATA_TYPE ;
 int GFP_KERNEL ;
 unsigned long H_R_STATE ;
 unsigned long H_SUCCESS ;
 int ehea_error (char*,...) ;
 unsigned long ehea_h_error_data (int ,int ,int *) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int print_error_data (int *) ;

u64 ehea_error_data(struct ehea_adapter *adapter, u64 res_handle,
      u64 *aer, u64 *aerr)
{
 unsigned long ret;
 u64 *rblock;
 u64 type = 0;

 rblock = (void *)get_zeroed_page(GFP_KERNEL);
 if (!rblock) {
  ehea_error("Cannot allocate rblock memory.");
  goto out;
 }

 ret = ehea_h_error_data(adapter->handle, res_handle, rblock);

 if (ret == H_SUCCESS) {
  type = EHEA_BMASK_GET(ERROR_DATA_TYPE, rblock[2]);
  *aer = rblock[6];
  *aerr = rblock[12];
  print_error_data(rblock);
 } else if (ret == H_R_STATE) {
  ehea_error("No error data available: %llX.", res_handle);
 } else
  ehea_error("Error data could not be fetched: %llX", res_handle);

 free_page((unsigned long)rblock);
out:
 return type;
}
