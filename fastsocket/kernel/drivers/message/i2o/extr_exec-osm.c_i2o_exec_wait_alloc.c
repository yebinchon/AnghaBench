
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_exec_wait {int lock; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct i2o_exec_wait* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct i2o_exec_wait *i2o_exec_wait_alloc(void)
{
 struct i2o_exec_wait *wait;

 wait = kzalloc(sizeof(*wait), GFP_KERNEL);
 if (!wait)
  return ((void*)0);

 INIT_LIST_HEAD(&wait->list);
 spin_lock_init(&wait->lock);

 return wait;
}
