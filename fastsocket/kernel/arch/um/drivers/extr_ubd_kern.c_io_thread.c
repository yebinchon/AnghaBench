
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_thread_req {int dummy; } ;


 int do_io (struct io_thread_req*) ;
 int ignore_sigwinch_sig () ;
 int io_count ;
 int kernel_fd ;
 int os_read_file (int ,struct io_thread_req**,int) ;
 int os_write_file (int ,struct io_thread_req**,int) ;
 int printk (char*,int ,int) ;

int io_thread(void *arg)
{
 struct io_thread_req *req;
 int n;

 ignore_sigwinch_sig();
 while(1){
  n = os_read_file(kernel_fd, &req,
     sizeof(struct io_thread_req *));
  if(n != sizeof(struct io_thread_req *)){
   if(n < 0)
    printk("io_thread - read failed, fd = %d, "
           "err = %d\n", kernel_fd, -n);
   else {
    printk("io_thread - short read, fd = %d, "
           "length = %d\n", kernel_fd, n);
   }
   continue;
  }
  io_count++;
  do_io(req);
  n = os_write_file(kernel_fd, &req,
      sizeof(struct io_thread_req *));
  if(n != sizeof(struct io_thread_req *))
   printk("io_thread - write failed, fd = %d, err = %d\n",
          kernel_fd, -n);
 }

 return 0;
}
