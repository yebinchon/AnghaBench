
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int dummy; } ;


 int EFAULT ;
 scalar_t__ avc_ca_reset (struct firedtv*) ;

__attribute__((used)) static int fdtv_ca_reset(struct firedtv *fdtv)
{
 return avc_ca_reset(fdtv) ? -EFAULT : 0;
}
