
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int dummy; } ;
struct ca_msg {int length; int msg; } ;


 int EFAULT ;
 scalar_t__ avc_ca_app_info (struct firedtv*,int ,int *) ;

__attribute__((used)) static int fdtv_ca_app_info(struct firedtv *fdtv, void *arg)
{
 struct ca_msg *reply = arg;

 return avc_ca_app_info(fdtv, reply->msg, &reply->length) ? -EFAULT : 0;
}
