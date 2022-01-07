
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct ttm_object_file *
ttm_object_file_ref(struct ttm_object_file *tfile)
{
 kref_get(&tfile->refcount);
 return tfile;
}
