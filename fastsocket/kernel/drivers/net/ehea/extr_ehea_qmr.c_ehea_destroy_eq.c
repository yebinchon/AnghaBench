
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ehea_eq {int fw_handle; int adapter; int epas; } ;


 int EIO ;
 int FORCE_FREE ;
 scalar_t__ H_R_STATE ;
 scalar_t__ H_SUCCESS ;
 int NORMAL_FREE ;
 scalar_t__ ehea_destroy_eq_res (struct ehea_eq*,int ) ;
 int ehea_error (char*) ;
 int ehea_error_data (int ,int ,scalar_t__*,scalar_t__*) ;
 int hcp_epas_dtor (int *) ;

int ehea_destroy_eq(struct ehea_eq *eq)
{
 u64 hret, aer, aerr;
 if (!eq)
  return 0;

 hcp_epas_dtor(&eq->epas);

 hret = ehea_destroy_eq_res(eq, NORMAL_FREE);
 if (hret == H_R_STATE) {
  ehea_error_data(eq->adapter, eq->fw_handle, &aer, &aerr);
  hret = ehea_destroy_eq_res(eq, FORCE_FREE);
 }

 if (hret != H_SUCCESS) {
  ehea_error("destroy EQ failed");
  return -EIO;
 }

 return 0;
}
