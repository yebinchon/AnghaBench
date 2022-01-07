
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int length; int sendb; int address; int tag; int recvb; } ;
struct pending_request {TYPE_4__ req; } ;
struct file_info {TYPE_3__* host; } ;
typedef int status ;
typedef int quadlet_t ;
struct TYPE_10__ {TYPE_1__* cache_head; } ;
struct TYPE_7__ {int generation; TYPE_5__* rom; } ;
struct TYPE_8__ {TYPE_2__ csr; } ;
struct TYPE_6__ {int len; } ;


 int CSR1212_CONFIG_ROM_SPACE_OFFSET ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ copy_to_user (int ,int*,int) ;
 int csr1212_read (TYPE_5__*,int ,int*,int) ;
 int free_pending_request (struct pending_request*) ;
 int int2ptr (int ) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static int get_config_rom(struct file_info *fi, struct pending_request *req)
{
 int ret = 0;
 quadlet_t *data = kmalloc(req->req.length, GFP_KERNEL);
 int status;

 if (!data)
  return -ENOMEM;

 status =
     csr1212_read(fi->host->csr.rom, CSR1212_CONFIG_ROM_SPACE_OFFSET,
    data, req->req.length);
 if (copy_to_user(int2ptr(req->req.recvb), data, req->req.length))
  ret = -EFAULT;
 if (copy_to_user
     (int2ptr(req->req.tag), &fi->host->csr.rom->cache_head->len,
      sizeof(fi->host->csr.rom->cache_head->len)))
  ret = -EFAULT;
 if (copy_to_user(int2ptr(req->req.address), &fi->host->csr.generation,
    sizeof(fi->host->csr.generation)))
  ret = -EFAULT;
 if (copy_to_user(int2ptr(req->req.sendb), &status, sizeof(status)))
  ret = -EFAULT;
 kfree(data);
 if (ret >= 0) {
  free_pending_request(req);
 }
 return ret;
}
