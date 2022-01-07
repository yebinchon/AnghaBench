
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int flags; } ;
typedef size_t ssize_t ;


 int INTEGRITY_FLAG_WRITE ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static ssize_t integrity_write_store(struct blk_integrity *bi,
         const char *page, size_t count)
{
 char *p = (char *) page;
 unsigned long val = simple_strtoul(p, &p, 10);

 if (val)
  bi->flags |= INTEGRITY_FLAG_WRITE;
 else
  bi->flags &= ~INTEGRITY_FLAG_WRITE;

 return count;
}
