
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool
ath5k_check_timer_win(int a, int b, int window, int intval)
{






 if ((b - a == window) ||
     (a - b == intval - window) ||
     ((a | 0x10000) - b == intval - window) ||
     ((b | 0x10000) - a == window))
  return 1;
 return 0;
}
