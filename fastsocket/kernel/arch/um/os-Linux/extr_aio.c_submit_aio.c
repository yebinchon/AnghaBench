
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_context {int reply_fd; } ;
typedef enum aio_type { ____Placeholder_aio_type } aio_type ;


 scalar_t__ aio_24 ;
 int submit_aio_24 (int,int,char*,int,unsigned long long,struct aio_context*) ;
 int submit_aio_26 (int,int,char*,int,unsigned long long,struct aio_context*) ;

int submit_aio(enum aio_type type, int io_fd, char *buf, int len,
        unsigned long long offset, int reply_fd,
        struct aio_context *aio)
{
 aio->reply_fd = reply_fd;
 if (aio_24)
  return submit_aio_24(type, io_fd, buf, len, offset, aio);
 else
  return submit_aio_26(type, io_fd, buf, len, offset, aio);
}
