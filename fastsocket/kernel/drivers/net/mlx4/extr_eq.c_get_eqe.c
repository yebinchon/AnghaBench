
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_eqe {int dummy; } ;
struct mlx4_eq {int nent; TYPE_1__* page_list; } ;
struct TYPE_2__ {struct mlx4_eqe* buf; } ;


 int MLX4_EQ_ENTRY_SIZE ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static struct mlx4_eqe *get_eqe(struct mlx4_eq *eq, u32 entry, u8 eqe_factor)
{

 unsigned long offset = (entry & (eq->nent - 1)) * (MLX4_EQ_ENTRY_SIZE << eqe_factor);





 return eq->page_list[offset / PAGE_SIZE].buf + (offset + (eqe_factor ? MLX4_EQ_ENTRY_SIZE : 0)) % PAGE_SIZE;
}
