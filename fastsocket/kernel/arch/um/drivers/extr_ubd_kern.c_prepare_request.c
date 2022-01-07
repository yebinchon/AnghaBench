
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap_len; int bitmap_offset; int bitmap; int * file; int data_offset; int fd; } ;
struct ubd {TYPE_1__ cow; int fd; } ;
struct request {struct gendisk* rq_disk; } ;
struct page {int dummy; } ;
struct io_thread_req {int cow_offset; unsigned long long offset; int length; int sectorsize; scalar_t__ buffer; int * offsets; int op; scalar_t__ sector_mask; scalar_t__ error; int * fds; struct request* req; } ;
struct gendisk {struct ubd* private_data; } ;


 scalar_t__ READ ;
 int UBD_READ ;
 int UBD_WRITE ;
 int cowify_req (struct io_thread_req*,int ,int ,int ) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static void prepare_request(struct request *req, struct io_thread_req *io_req,
       unsigned long long offset, int page_offset,
       int len, struct page *page)
{
 struct gendisk *disk = req->rq_disk;
 struct ubd *ubd_dev = disk->private_data;

 io_req->req = req;
 io_req->fds[0] = (ubd_dev->cow.file != ((void*)0)) ? ubd_dev->cow.fd :
  ubd_dev->fd;
 io_req->fds[1] = ubd_dev->fd;
 io_req->cow_offset = -1;
 io_req->offset = offset;
 io_req->length = len;
 io_req->error = 0;
 io_req->sector_mask = 0;

 io_req->op = (rq_data_dir(req) == READ) ? UBD_READ : UBD_WRITE;
 io_req->offsets[0] = 0;
 io_req->offsets[1] = ubd_dev->cow.data_offset;
 io_req->buffer = page_address(page) + page_offset;
 io_req->sectorsize = 1 << 9;

 if(ubd_dev->cow.file != ((void*)0))
  cowify_req(io_req, ubd_dev->cow.bitmap,
      ubd_dev->cow.bitmap_offset, ubd_dev->cow.bitmap_len);

}
