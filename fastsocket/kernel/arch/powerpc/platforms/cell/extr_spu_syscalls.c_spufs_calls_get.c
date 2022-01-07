
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_calls {int dummy; } ;


 struct spufs_calls* spufs_calls ;

__attribute__((used)) static inline struct spufs_calls *spufs_calls_get(void)
{
 return spufs_calls;
}
