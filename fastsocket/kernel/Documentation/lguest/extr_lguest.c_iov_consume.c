
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {unsigned int iov_len; unsigned int iov_base; } ;


 int assert (int) ;

__attribute__((used)) static void iov_consume(struct iovec iov[], unsigned num_iov, unsigned len)
{
 unsigned int i;

 for (i = 0; i < num_iov; i++) {
  unsigned int used;

  used = iov[i].iov_len < len ? iov[i].iov_len : len;
  iov[i].iov_base += used;
  iov[i].iov_len -= used;
  len -= used;
 }
 assert(len == 0);
}
