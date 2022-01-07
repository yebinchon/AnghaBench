
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct pool {TYPE_1__ pf; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;



__attribute__((used)) static enum pool_mode get_pool_mode(struct pool *pool)
{
 return pool->pf.mode;
}
