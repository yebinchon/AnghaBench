
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmpex_bmc_data {int dummy; } ;


 struct ibmpex_bmc_data* get_bmc_data (int) ;
 int ibmpex_bmc_delete (struct ibmpex_bmc_data*) ;

__attribute__((used)) static void ibmpex_bmc_gone(int iface)
{
 struct ibmpex_bmc_data *data = get_bmc_data(iface);

 if (!data)
  return;

 ibmpex_bmc_delete(data);
}
