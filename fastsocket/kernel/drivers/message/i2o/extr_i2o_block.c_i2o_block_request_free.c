
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_block_request {int dummy; } ;
struct TYPE_2__ {int pool; } ;


 TYPE_1__ i2o_blk_req_pool ;
 int mempool_free (struct i2o_block_request*,int ) ;

__attribute__((used)) static inline void i2o_block_request_free(struct i2o_block_request *ireq)
{
 mempool_free(ireq, i2o_blk_req_pool.pool);
}
