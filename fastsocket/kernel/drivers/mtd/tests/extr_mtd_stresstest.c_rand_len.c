
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufsize ;
 int simple_rand () ;

__attribute__((used)) static int rand_len(int offs)
{
 int len;

 if (bufsize < 32768)
  len = simple_rand();
 else
  len = (simple_rand() << 15) | simple_rand();
 len %= (bufsize - offs);
 return len;
}
