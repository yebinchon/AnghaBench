
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_priv {int pgdir_mutex; } ;
struct mlx4_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {TYPE_3__* pgdir; } ;
struct mlx4_db {int order; int index; TYPE_2__ u; } ;
struct TYPE_6__ {int list; int db_dma; int db_page; int order1; int * bits; int order0; } ;
struct TYPE_4__ {int dev; } ;


 int MLX4_DB_PER_PAGE ;
 int PAGE_SIZE ;
 scalar_t__ bitmap_full (int ,int) ;
 int clear_bit (int,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (TYPE_3__*) ;
 int list_del (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;

void mlx4_db_free(struct mlx4_dev *dev, struct mlx4_db *db)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int o;
 int i;

 mutex_lock(&priv->pgdir_mutex);

 o = db->order;
 i = db->index;

 if (db->order == 0 && test_bit(i ^ 1, db->u.pgdir->order0)) {
  clear_bit(i ^ 1, db->u.pgdir->order0);
  ++o;
 }
 i >>= o;
 set_bit(i, db->u.pgdir->bits[o]);

 if (bitmap_full(db->u.pgdir->order1, MLX4_DB_PER_PAGE / 2)) {
  dma_free_coherent(&(dev->pdev->dev), PAGE_SIZE,
      db->u.pgdir->db_page, db->u.pgdir->db_dma);
  list_del(&db->u.pgdir->list);
  kfree(db->u.pgdir);
 }

 mutex_unlock(&priv->pgdir_mutex);
}
