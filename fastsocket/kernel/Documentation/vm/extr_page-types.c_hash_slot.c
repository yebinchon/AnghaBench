
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EXIT_FAILURE ;
 int HASH_KEY (scalar_t__) ;
 int exit (int ) ;
 int fatal (char*) ;
 scalar_t__* page_flags ;

__attribute__((used)) static int hash_slot(uint64_t flags)
{
 int k = HASH_KEY(flags);
 int i;




 if (flags == 0)
  return 0;


 for (i = 1; i < ARRAY_SIZE(page_flags); i++, k++) {
  if (!k || k >= ARRAY_SIZE(page_flags))
   k = 1;
  if (page_flags[k] == 0) {
   page_flags[k] = flags;
   return k;
  }
  if (page_flags[k] == flags)
   return k;
 }

 fatal("hash table full: bump up HASH_SHIFT?\n");
 exit(EXIT_FAILURE);
}
