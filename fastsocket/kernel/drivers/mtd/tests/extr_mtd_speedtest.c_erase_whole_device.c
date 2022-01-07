
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bbt ;
 int cond_resched () ;
 unsigned int ebcnt ;
 int erase_eraseblock (unsigned int) ;

__attribute__((used)) static int erase_whole_device(void)
{
 int err;
 unsigned int i;

 for (i = 0; i < ebcnt; ++i) {
  if (bbt[i])
   continue;
  err = erase_eraseblock(i);
  if (err)
   return err;
  cond_resched();
 }
 return 0;
}
