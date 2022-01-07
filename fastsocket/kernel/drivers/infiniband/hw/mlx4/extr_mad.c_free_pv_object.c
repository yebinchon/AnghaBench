
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* demux; } ;
struct mlx4_ib_dev {TYPE_2__ sriov; } ;
struct TYPE_3__ {int ** tun; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_pv_object(struct mlx4_ib_dev *dev, int slave, int port)
{
 if (dev->sriov.demux[port - 1].tun[slave]) {
  kfree(dev->sriov.demux[port - 1].tun[slave]);
  dev->sriov.demux[port - 1].tun[slave] = ((void*)0);
 }
}
