
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct firedtv {int avc_mutex; int * avc_data; int device; TYPE_1__* backend; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* lock ) (struct firedtv*,int ,int *) ;} ;


 int dev_err (int ,char*) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct firedtv*,int ,int *) ;

__attribute__((used)) static int cmp_lock(struct firedtv *fdtv, u64 addr, __be32 data[])
{
 int ret;

 mutex_lock(&fdtv->avc_mutex);


 memcpy(fdtv->avc_data, data, 8);

 ret = fdtv->backend->lock(fdtv, addr, fdtv->avc_data);
 if (ret < 0)
  dev_err(fdtv->device, "CMP: lock I/O error\n");
 else
  memcpy(data, fdtv->avc_data, 8);

 mutex_unlock(&fdtv->avc_mutex);

 return ret;
}
