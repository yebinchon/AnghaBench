
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dummy; } ;


 int send_mad_adapter_info (struct ibmvscsi_host_data*) ;

__attribute__((used)) static void init_adapter(struct ibmvscsi_host_data *hostdata)
{
 send_mad_adapter_info(hostdata);
}
