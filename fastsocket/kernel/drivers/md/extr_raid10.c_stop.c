
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {struct r10conf* mirrors; int tmppage; scalar_t__ r10bio_pool; int plug; } ;
struct mddev {struct r10conf* private; int thread; } ;


 int kfree (struct r10conf*) ;
 int lower_barrier (struct r10conf*) ;
 int md_unregister_thread (int *) ;
 int mempool_destroy (scalar_t__) ;
 int plugger_flush (int *) ;
 int raise_barrier (struct r10conf*,int ) ;
 int safe_put_page (int ) ;

__attribute__((used)) static int stop(struct mddev *mddev)
{
 struct r10conf *conf = mddev->private;

 raise_barrier(conf, 0);
 lower_barrier(conf);

 md_unregister_thread(&mddev->thread);
 plugger_flush(&conf->plug);

 if (conf->r10bio_pool)
  mempool_destroy(conf->r10bio_pool);
 safe_put_page(conf->tmppage);
 kfree(conf->mirrors);
 kfree(conf);
 mddev->private = ((void*)0);
 return 0;
}
