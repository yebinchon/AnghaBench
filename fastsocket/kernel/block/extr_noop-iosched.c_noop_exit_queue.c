
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noop_data {int queue; } ;
struct elevator_queue {struct noop_data* elevator_data; } ;


 int BUG_ON (int) ;
 int kfree (struct noop_data*) ;
 int list_empty (int *) ;

__attribute__((used)) static void noop_exit_queue(struct elevator_queue *e)
{
 struct noop_data *nd = e->elevator_data;

 BUG_ON(!list_empty(&nd->queue));
 kfree(nd);
}
