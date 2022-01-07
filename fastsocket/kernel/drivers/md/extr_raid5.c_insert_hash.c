
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int hash; scalar_t__ sector; } ;
struct r5conf {int dummy; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head (int *,struct hlist_head*) ;
 int pr_debug (char*,unsigned long long) ;
 struct hlist_head* stripe_hash (struct r5conf*,scalar_t__) ;

__attribute__((used)) static inline void insert_hash(struct r5conf *conf, struct stripe_head *sh)
{
 struct hlist_head *hp = stripe_hash(conf, sh->sector);

 pr_debug("insert_hash(), stripe %llu\n",
  (unsigned long long)sh->sector);

 hlist_add_head(&sh->hash, hp);
}
