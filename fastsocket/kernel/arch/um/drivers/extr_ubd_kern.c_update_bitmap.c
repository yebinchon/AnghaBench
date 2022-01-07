
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int cow_offset; int * fds; int bitmap_words; } ;


 int os_seek_file (int ,int) ;
 int os_write_file (int ,int *,int) ;
 int printk (char*,int,...) ;

__attribute__((used)) static int update_bitmap(struct io_thread_req *req)
{
 int n;

 if(req->cow_offset == -1)
  return 0;

 n = os_seek_file(req->fds[1], req->cow_offset);
 if(n < 0){
  printk("do_io - bitmap lseek failed : err = %d\n", -n);
  return 1;
 }

 n = os_write_file(req->fds[1], &req->bitmap_words,
     sizeof(req->bitmap_words));
 if(n != sizeof(req->bitmap_words)){
  printk("do_io - bitmap update failed, err = %d fd = %d\n", -n,
         req->fds[1]);
  return 1;
 }

 return 0;
}
