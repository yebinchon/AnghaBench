
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_file {int use_pkey_index; int mutex; scalar_t__ already_used; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long ib_umad_enable_pkey(struct ib_umad_file *file)
{
 int ret = 0;

 mutex_lock(&file->mutex);
 if (file->already_used)
  ret = -EINVAL;
 else
  file->use_pkey_index = 1;
 mutex_unlock(&file->mutex);

 return ret;
}
