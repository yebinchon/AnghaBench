
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {scalar_t__* uld_handle; } ;
typedef enum cxgb4_control { ____Placeholder_cxgb4_control } cxgb4_control ;
struct TYPE_2__ {int (* control ) (scalar_t__,int) ;} ;


 size_t CXGB4_ULD_RDMA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__,int) ;
 int uld_mutex ;
 TYPE_1__* ulds ;

__attribute__((used)) static void notify_rdma_uld(struct adapter *adap, enum cxgb4_control cmd)
{
 mutex_lock(&uld_mutex);
 if (adap->uld_handle[CXGB4_ULD_RDMA])
  ulds[CXGB4_ULD_RDMA].control(adap->uld_handle[CXGB4_ULD_RDMA],
    cmd);
 mutex_unlock(&uld_mutex);
}
