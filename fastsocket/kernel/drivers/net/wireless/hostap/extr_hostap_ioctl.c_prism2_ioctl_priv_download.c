
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct prism2_download_param {int num_areas; } ;
struct prism2_download_area {int dummy; } ;
struct iw_point {int length; int pointer; } ;
struct TYPE_6__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_5__ {int (* download ) (TYPE_2__*,struct prism2_download_param*) ;} ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ copy_from_user (struct prism2_download_param*,int ,int) ;
 int kfree (struct prism2_download_param*) ;
 struct prism2_download_param* kmalloc (int,int ) ;
 int stub1 (TYPE_2__*,struct prism2_download_param*) ;

__attribute__((used)) static int prism2_ioctl_priv_download(local_info_t *local, struct iw_point *p)
{
 struct prism2_download_param *param;
 int ret = 0;

 if (p->length < sizeof(struct prism2_download_param) ||
     p->length > 1024 || !p->pointer)
  return -EINVAL;

 param = kmalloc(p->length, GFP_KERNEL);
 if (param == ((void*)0))
  return -ENOMEM;

 if (copy_from_user(param, p->pointer, p->length)) {
  ret = -EFAULT;
  goto out;
 }

 if (p->length < sizeof(struct prism2_download_param) +
     param->num_areas * sizeof(struct prism2_download_area)) {
  ret = -EINVAL;
  goto out;
 }

 ret = local->func->download(local, param);

 out:
 kfree(param);
 return ret;
}
