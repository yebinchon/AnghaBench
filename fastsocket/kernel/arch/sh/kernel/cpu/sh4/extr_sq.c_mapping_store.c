
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EIO ;
 int PAGE_SHARED ;
 scalar_t__ likely (unsigned long) ;
 int pgprot_val (int ) ;
 int sq_remap (unsigned long,unsigned long,char*,int ) ;
 int sq_unmap (unsigned long) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static ssize_t mapping_store(const char *buf, size_t count)
{
 unsigned long base = 0, len = 0;

 sscanf(buf, "%lx %lx", &base, &len);
 if (!base)
  return -EIO;

 if (likely(len)) {
  int ret = sq_remap(base, len, "Userspace",
       pgprot_val(PAGE_SHARED));
  if (ret < 0)
   return ret;
 } else
  sq_unmap(base);

 return count;
}
