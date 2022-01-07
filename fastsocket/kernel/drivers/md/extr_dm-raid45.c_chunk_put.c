
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_chunk {int cnt; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_return (int *) ;

__attribute__((used)) static void chunk_put(struct stripe_chunk *chunk)
{
 BUG_ON(atomic_dec_return(&chunk->cnt) < 0);
}
