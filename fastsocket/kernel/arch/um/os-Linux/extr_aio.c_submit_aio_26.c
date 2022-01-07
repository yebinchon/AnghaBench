
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_context {int dummy; } ;
typedef enum aio_type { ____Placeholder_aio_type } aio_type ;


 int ENOSYS ;

__attribute__((used)) static int submit_aio_26(enum aio_type type, int io_fd, char *buf, int len,
    unsigned long long offset, struct aio_context *aio)
{
 return -ENOSYS;
}
