
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ tr_idx; } ;
struct TYPE_3__ {scalar_t__ tr_idx; } ;


 int cycle_kernel_lock () ;
 TYPE_2__ rx_ring ;
 TYPE_1__ tx_ring ;

__attribute__((used)) static int tgt_open(struct inode *inode, struct file *file)
{
 tx_ring.tr_idx = rx_ring.tr_idx = 0;

 cycle_kernel_lock();
 return 0;
}
