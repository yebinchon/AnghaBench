
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;

__attribute__((used)) static inline void wait(int n, int io)
{
 for (; n; --n)
  inb(io);
}
