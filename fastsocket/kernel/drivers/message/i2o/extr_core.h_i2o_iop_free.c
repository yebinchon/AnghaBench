
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_controller {int in_msg; } ;


 int i2o_pool_free (int *) ;
 int kfree (struct i2o_controller*) ;

__attribute__((used)) static inline void i2o_iop_free(struct i2o_controller *c)
{
 i2o_pool_free(&c->in_msg);
 kfree(c);
}
