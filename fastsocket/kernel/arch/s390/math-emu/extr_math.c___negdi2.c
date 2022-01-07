
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long long
__negdi2 (long long u)
{

  union lll {
    long long ll;
    long s[2];
  };

  union lll w,uu;

  uu.ll = u;

  w.s[1] = -uu.s[1];
  w.s[0] = -uu.s[0] - ((int) w.s[1] != 0);

  return w.ll;
}
