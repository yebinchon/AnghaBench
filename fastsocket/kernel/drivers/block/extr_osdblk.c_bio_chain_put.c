
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; } ;


 int bio_put (struct bio*) ;

__attribute__((used)) static void bio_chain_put(struct bio *chain)
{
 struct bio *tmp;

 while (chain) {
  tmp = chain;
  chain = chain->bi_next;

  bio_put(tmp);
 }
}
