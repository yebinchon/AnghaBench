
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bbt ;
 int ebcnt ;
 int simple_rand () ;

__attribute__((used)) static int rand_eb(void)
{
 int eb;

again:
 if (ebcnt < 32768)
  eb = simple_rand();
 else
  eb = (simple_rand() << 15) | simple_rand();

 eb %= (ebcnt - 1);
 if (bbt[eb])
  goto again;
 return eb;
}
