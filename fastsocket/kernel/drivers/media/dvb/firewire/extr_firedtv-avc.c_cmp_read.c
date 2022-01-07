
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct firedtv {int avc_mutex; int device; TYPE_1__* backend; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* read ) (struct firedtv*,int ,int *) ;} ;


 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct firedtv*,int ,int *) ;

__attribute__((used)) static int cmp_read(struct firedtv *fdtv, u64 addr, __be32 *data)
{
 int ret;

 mutex_lock(&fdtv->avc_mutex);

 ret = fdtv->backend->read(fdtv, addr, data);
 if (ret < 0)
  dev_err(fdtv->device, "CMP: read I/O error\n");

 mutex_unlock(&fdtv->avc_mutex);

 return ret;
}
