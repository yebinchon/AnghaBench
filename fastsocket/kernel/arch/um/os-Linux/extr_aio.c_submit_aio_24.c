
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_thread_req {int type; int io_fd; unsigned long long offset; char* buf; int len; struct aio_context* aio; } ;
struct aio_context {int dummy; } ;
typedef int req ;
typedef enum aio_type { ____Placeholder_aio_type } aio_type ;


 int aio_req_fd_w ;
 int errno ;
 int write (int ,struct aio_thread_req*,int) ;

__attribute__((used)) static int submit_aio_24(enum aio_type type, int io_fd, char *buf, int len,
    unsigned long long offset, struct aio_context *aio)
{
 struct aio_thread_req req = { .type = type,
          .io_fd = io_fd,
          .offset = offset,
          .buf = buf,
          .len = len,
          .aio = aio,
 };
 int err;

 err = write(aio_req_fd_w, &req, sizeof(req));
 if (err == sizeof(req))
  err = 0;
 else err = -errno;

 return err;
}
