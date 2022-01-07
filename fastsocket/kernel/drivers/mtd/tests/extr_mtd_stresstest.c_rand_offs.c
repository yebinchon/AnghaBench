
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufsize ;
 int simple_rand () ;

__attribute__((used)) static int rand_offs(void)
{
 int offs;

 if (bufsize < 32768)
  offs = simple_rand();
 else
  offs = (simple_rand() << 15) | simple_rand();
 offs %= bufsize;
 return offs;
}
