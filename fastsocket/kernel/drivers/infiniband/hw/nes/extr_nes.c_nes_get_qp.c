
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int max_qp; TYPE_1__** qp_table; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_qp ibqp; } ;


 int NES_FIRST_QPN ;
 struct nes_vnic* to_nesvnic (struct ib_device*) ;

struct ib_qp *nes_get_qp(struct ib_device *device, int qpn)
{
 struct nes_vnic *nesvnic = to_nesvnic(device);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 if ((qpn < NES_FIRST_QPN) || (qpn >= (NES_FIRST_QPN + nesadapter->max_qp)))
  return ((void*)0);

 return &nesadapter->qp_table[qpn - NES_FIRST_QPN]->ibqp;
}
