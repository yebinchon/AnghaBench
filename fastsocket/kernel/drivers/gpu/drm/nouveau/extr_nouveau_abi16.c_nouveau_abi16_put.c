
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli {int mutex; } ;
struct nouveau_abi16 {scalar_t__ client; } ;


 int mutex_unlock (int *) ;

int
nouveau_abi16_put(struct nouveau_abi16 *abi16, int ret)
{
 struct nouveau_cli *cli = (void *)abi16->client;
 mutex_unlock(&cli->mutex);
 return ret;
}
