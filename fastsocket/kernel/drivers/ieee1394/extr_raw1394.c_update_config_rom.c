
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recvb; scalar_t__ misc; int length; int sendb; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {int cfgrom_upd; int host; } ;
typedef int status ;
typedef int quadlet_t ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ copy_from_user (int *,int ,int ) ;
 scalar_t__ copy_to_user (int ,int*,int) ;
 int free_pending_request (struct pending_request*) ;
 int hpsb_update_config_rom (int ,int *,int ,unsigned char) ;
 int int2ptr (int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static int update_config_rom(struct file_info *fi, struct pending_request *req)
{
 int ret = 0;
 quadlet_t *data = kmalloc(req->req.length, GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 if (copy_from_user(data, int2ptr(req->req.sendb), req->req.length)) {
  ret = -EFAULT;
 } else {
  int status = hpsb_update_config_rom(fi->host,
          data, req->req.length,
          (unsigned char)req->req.
          misc);
  if (copy_to_user
      (int2ptr(req->req.recvb), &status, sizeof(status)))
   ret = -ENOMEM;
 }
 kfree(data);
 if (ret >= 0) {
  free_pending_request(req);
  fi->cfgrom_upd = 1;
 }
 return ret;
}
