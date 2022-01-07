
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dummy; } ;
struct crq_queue {int dummy; } ;



__attribute__((used)) static int iseriesvscsi_reenable_crq_queue(struct crq_queue *queue,
        struct ibmvscsi_host_data *hostdata)
{
 return 0;
}
