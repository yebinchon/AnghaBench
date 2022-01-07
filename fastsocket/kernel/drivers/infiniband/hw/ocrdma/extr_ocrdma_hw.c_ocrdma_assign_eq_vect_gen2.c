
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_eq {int vector; } ;
struct TYPE_3__ {int start_vector; } ;
struct TYPE_4__ {TYPE_1__ msix; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;



__attribute__((used)) static void ocrdma_assign_eq_vect_gen2(struct ocrdma_dev *dev,
           struct ocrdma_eq *eq)
{

 eq->vector = dev->nic_info.msix.start_vector;
 dev->nic_info.msix.start_vector += 1;
}
