
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int * r1buf_pool; } ;


 int allow_barrier (struct r1conf*) ;
 int mempool_destroy (int *) ;
 int wait_barrier (struct r1conf*) ;

__attribute__((used)) static void close_sync(struct r1conf *conf)
{
 wait_barrier(conf);
 allow_barrier(conf);

 mempool_destroy(conf->r1buf_pool);
 conf->r1buf_pool = ((void*)0);
}
