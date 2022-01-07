
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_eqe {int owner; } ;
struct mlx4_eq {int cons_index; int nent; } ;


 struct mlx4_eqe* get_eqe (struct mlx4_eq*,int,int ) ;

__attribute__((used)) static struct mlx4_eqe *next_eqe_sw(struct mlx4_eq *eq, u8 eqe_factor)
{
 struct mlx4_eqe *eqe = get_eqe(eq, eq->cons_index, eqe_factor);
 return !!(eqe->owner & 0x80) ^ !!(eq->cons_index & eq->nent) ? ((void*)0) : eqe;
}
