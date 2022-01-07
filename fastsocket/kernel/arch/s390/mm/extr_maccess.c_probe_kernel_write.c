
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EFAULT ;
 long probe_kernel_write_odd (void*,void*,size_t) ;

long probe_kernel_write(void *dst, void *src, size_t size)
{
 long copied = 0;

 while (size) {
  copied = probe_kernel_write_odd(dst, src, size);
  if (copied < 0)
   break;
  dst += copied;
  src += copied;
  size -= copied;
 }
 return copied < 0 ? -EFAULT : 0;
}
