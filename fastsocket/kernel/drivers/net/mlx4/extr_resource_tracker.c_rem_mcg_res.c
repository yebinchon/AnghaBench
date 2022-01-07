
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct res_qp {int mcg_spl; } ;
struct res_gid {int prot; int steer; int list; int reg_id; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int EINVAL ;
 struct res_gid* find_gid (struct mlx4_dev*,int,struct res_qp*,int *) ;
 int kfree (struct res_gid*) ;
 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rem_mcg_res(struct mlx4_dev *dev, int slave, struct res_qp *rqp,
         u8 *gid, enum mlx4_protocol prot,
         enum mlx4_steer_type steer, u64 *reg_id)
{
 struct res_gid *res;
 int err;

 spin_lock_irq(&rqp->mcg_spl);
 res = find_gid(dev, slave, rqp, gid);
 if (!res || res->prot != prot || res->steer != steer)
  err = -EINVAL;
 else {
  *reg_id = res->reg_id;
  list_del(&res->list);
  kfree(res);
  err = 0;
 }
 spin_unlock_irq(&rqp->mcg_spl);

 return err;
}
