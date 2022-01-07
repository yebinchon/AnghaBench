
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; } ;



__attribute__((used)) static bool iov_empty(const struct iovec iov[], unsigned int num_iov)
{
 unsigned int i;

 for (i = 0; i < num_iov; i++)
  if (iov[i].iov_len)
   return 0;
 return 1;
}
