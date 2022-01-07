
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int worker; int wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void wake_worker(struct pool *pool)
{
 queue_work(pool->wq, &pool->worker);
}
