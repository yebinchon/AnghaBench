
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ib_qp_init_attr {int port_num; int qp_type; } ;
struct ehca_shca {int ib_device; TYPE_2__* sport; int ipz_hca_handle; } ;
struct TYPE_3__ {int kernel; } ;
struct ehca_qp {TYPE_1__ galpas; int ipz_qp_handle; } ;
struct TYPE_4__ {scalar_t__ port_state; int pma_qp_nr; } ;


 int H_HARDWARE ;
 int H_PARAMETER ;
 int H_SUCCESS ;
 scalar_t__ IB_PORT_ACTIVE ;
 scalar_t__ IB_PORT_DOWN ;


 int ehca_dbg (int *,char*,int,...) ;
 int ehca_err (int *,char*,int,...) ;
 scalar_t__ ehca_nr_ports ;
 int ehca_port_act_time ;
 int hipz_h_define_aqp1 (int ,int ,int ,int ,int *,int *) ;
 int msleep_interruptible (int) ;

u64 ehca_define_sqp(struct ehca_shca *shca,
      struct ehca_qp *ehca_qp,
      struct ib_qp_init_attr *qp_init_attr)
{
 u32 pma_qp_nr, bma_qp_nr;
 u64 ret;
 u8 port = qp_init_attr->port_num;
 int counter;

 shca->sport[port - 1].port_state = IB_PORT_DOWN;

 switch (qp_init_attr->qp_type) {
 case 128:

  break;
 case 129:
  ret = hipz_h_define_aqp1(shca->ipz_hca_handle,
      ehca_qp->ipz_qp_handle,
      ehca_qp->galpas.kernel,
      (u32) qp_init_attr->port_num,
      &pma_qp_nr, &bma_qp_nr);

  if (ret != H_SUCCESS) {
   ehca_err(&shca->ib_device,
     "Can't define AQP1 for port %x. h_ret=%lli",
     port, ret);
   return ret;
  }
  shca->sport[port - 1].pma_qp_nr = pma_qp_nr;
  ehca_dbg(&shca->ib_device, "port=%x pma_qp_nr=%x",
    port, pma_qp_nr);
  break;
 default:
  ehca_err(&shca->ib_device, "invalid qp_type=%x",
    qp_init_attr->qp_type);
  return H_PARAMETER;
 }

 if (ehca_nr_ports < 0)
  return H_SUCCESS;

 for (counter = 0;
      shca->sport[port - 1].port_state != IB_PORT_ACTIVE &&
       counter < ehca_port_act_time;
      counter++) {
  ehca_dbg(&shca->ib_device, "... wait until port %x is active",
    port);
  msleep_interruptible(1000);
 }

 if (counter == ehca_port_act_time) {
  ehca_err(&shca->ib_device, "Port %x is not active.", port);
  return H_HARDWARE;
 }

 return H_SUCCESS;
}
