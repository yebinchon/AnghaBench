
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLDMEM_BASE ;
 unsigned long OLDMEM_SIZE ;
 int memcpy_real (void*,void*,size_t) ;
 unsigned long min (size_t,unsigned long) ;

__attribute__((used)) static int copy_from_oldmem(void *dest, void *src, size_t count)
{
 unsigned long copied = 0;
 int rc;

 if ((unsigned long) src < OLDMEM_SIZE) {
  copied = min(count, OLDMEM_SIZE - (unsigned long) src);
  rc = memcpy_real(dest, src + OLDMEM_BASE, copied);
  if (rc)
   return rc;
 }
 return memcpy_real(dest + copied, src + copied, count - copied);
}
