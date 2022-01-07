
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* pkey_phys_table_len; } ;
struct TYPE_3__ {int num_ports; int* gid_table_len; scalar_t__* pkey_table_len; } ;
struct mlx4_dev {TYPE_2__ phys_caps; TYPE_1__ caps; } ;



__attribute__((used)) static void mlx4_parav_master_pf_caps(struct mlx4_dev *dev)
{
 int i;

 for (i = 1; i <= dev->caps.num_ports; i++) {
  dev->caps.gid_table_len[i] = 1;
  dev->caps.pkey_table_len[i] =
   dev->phys_caps.pkey_phys_table_len[i] - 1;
 }
}
