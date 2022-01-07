
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_block_request {int sg_table; int queue; } ;
struct TYPE_2__ {int pool; } ;


 int ENOMEM ;
 struct i2o_block_request* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int I2O_MAX_PHYS_SEGMENTS ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ i2o_blk_req_pool ;
 struct i2o_block_request* mempool_alloc (int ,int ) ;
 int sg_init_table (int ,int ) ;

__attribute__((used)) static inline struct i2o_block_request *i2o_block_request_alloc(void)
{
 struct i2o_block_request *ireq;

 ireq = mempool_alloc(i2o_blk_req_pool.pool, GFP_ATOMIC);
 if (!ireq)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&ireq->queue);
 sg_init_table(ireq->sg_table, I2O_MAX_PHYS_SEGMENTS);

 return ireq;
}
