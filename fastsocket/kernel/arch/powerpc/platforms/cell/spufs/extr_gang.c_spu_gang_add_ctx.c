
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int mutex; int contexts; int list; } ;
struct spu_context {int gang_list; int gang; } ;


 int get_spu_gang (struct spu_gang*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void spu_gang_add_ctx(struct spu_gang *gang, struct spu_context *ctx)
{
 mutex_lock(&gang->mutex);
 ctx->gang = get_spu_gang(gang);
 list_add(&ctx->gang_list, &gang->list);
 gang->contexts++;
 mutex_unlock(&gang->mutex);
}
