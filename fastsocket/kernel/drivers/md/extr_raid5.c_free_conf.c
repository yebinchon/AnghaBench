
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct r5conf* stripe_hashtbl; struct r5conf* disks; } ;


 int kfree (struct r5conf*) ;
 int raid5_free_percpu (struct r5conf*) ;
 int shrink_stripes (struct r5conf*) ;

__attribute__((used)) static void free_conf(struct r5conf *conf)
{
 shrink_stripes(conf);
 raid5_free_percpu(conf);
 kfree(conf->disks);
 kfree(conf->stripe_hashtbl);
 kfree(conf);
}
