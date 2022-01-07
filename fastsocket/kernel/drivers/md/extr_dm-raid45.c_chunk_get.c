
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int cnt; } ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static int chunk_get(struct stripe_chunk *chunk)
{
 return atomic_inc_return(&chunk->cnt);
}
