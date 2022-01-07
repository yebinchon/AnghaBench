
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_pool {scalar_t__ allocated; int arr; struct conn_context* next_idx; } ;
struct conn_context {struct conn_context* next_idx; struct context_pool* pool; } ;


 int assert (int) ;

void free_context(struct conn_context *context)
{
 struct context_pool *pool = context->pool;

 assert(pool->allocated > 0);
 pool->allocated--;

 context->next_idx = pool->next_idx;
 pool->next_idx = context - pool->arr;
}
