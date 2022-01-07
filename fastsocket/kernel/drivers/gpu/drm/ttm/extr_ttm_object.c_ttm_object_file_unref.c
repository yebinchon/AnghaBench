
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int refcount; } ;


 int kref_put (int *,int ) ;
 int ttm_object_file_destroy ;

__attribute__((used)) static inline void ttm_object_file_unref(struct ttm_object_file **p_tfile)
{
 struct ttm_object_file *tfile = *p_tfile;

 *p_tfile = ((void*)0);
 kref_put(&tfile->refcount, ttm_object_file_destroy);
}
