
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENV_BOOTED_DEV ;
 long callback_getenv (int ,char*,int) ;
 long callback_open (char*,long) ;

__attribute__((used)) static inline long openboot(void)
{
 char bootdev[256];
 long result;

 result = callback_getenv(ENV_BOOTED_DEV, bootdev, 255);
 if (result < 0)
  return result;
 return callback_open(bootdev, result & 255);
}
