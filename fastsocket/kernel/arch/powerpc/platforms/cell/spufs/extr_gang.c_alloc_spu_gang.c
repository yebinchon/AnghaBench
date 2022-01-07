
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gang {int aff_list_head; int list; int aff_mutex; int mutex; int kref; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 struct spu_gang* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct spu_gang *alloc_spu_gang(void)
{
 struct spu_gang *gang;

 gang = kzalloc(sizeof *gang, GFP_KERNEL);
 if (!gang)
  goto out;

 kref_init(&gang->kref);
 mutex_init(&gang->mutex);
 mutex_init(&gang->aff_mutex);
 INIT_LIST_HEAD(&gang->list);
 INIT_LIST_HEAD(&gang->aff_list_head);

out:
 return gang;
}
