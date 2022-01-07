
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int length; int sectorsize; char* buffer; int error; scalar_t__ op; int * fds; scalar_t__* offsets; scalar_t__ offset; int sector_mask; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ UBD_READ ;
 int memset (char*,int ,unsigned long) ;
 int os_read_file (int ,char*,unsigned long) ;
 int os_seek_file (int ,scalar_t__) ;
 int os_write_file (int ,char*,unsigned long) ;
 int printk (char*,int,...) ;
 int ubd_test_bit (int,unsigned char*) ;
 int update_bitmap (struct io_thread_req*) ;

__attribute__((used)) static void do_io(struct io_thread_req *req)
{
 char *buf;
 unsigned long len;
 int n, nsectors, start, end, bit;
 int err;
 __u64 off;

 nsectors = req->length / req->sectorsize;
 start = 0;
 do {
  bit = ubd_test_bit(start, (unsigned char *) &req->sector_mask);
  end = start;
  while((end < nsectors) &&
        (ubd_test_bit(end, (unsigned char *)
        &req->sector_mask) == bit))
   end++;

  off = req->offset + req->offsets[bit] +
   start * req->sectorsize;
  len = (end - start) * req->sectorsize;
  buf = &req->buffer[start * req->sectorsize];

  err = os_seek_file(req->fds[bit], off);
  if(err < 0){
   printk("do_io - lseek failed : err = %d\n", -err);
   req->error = 1;
   return;
  }
  if(req->op == UBD_READ){
   n = 0;
   do {
    buf = &buf[n];
    len -= n;
    n = os_read_file(req->fds[bit], buf, len);
    if (n < 0) {
     printk("do_io - read failed, err = %d "
            "fd = %d\n", -n, req->fds[bit]);
     req->error = 1;
     return;
    }
   } while((n < len) && (n != 0));
   if (n < len) memset(&buf[n], 0, len - n);
  } else {
   n = os_write_file(req->fds[bit], buf, len);
   if(n != len){
    printk("do_io - write failed err = %d "
           "fd = %d\n", -n, req->fds[bit]);
    req->error = 1;
    return;
   }
  }

  start = end;
 } while(start < nsectors);

 req->error = update_bitmap(req);
}
