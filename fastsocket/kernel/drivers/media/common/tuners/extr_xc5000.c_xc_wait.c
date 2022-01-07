
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep (int) ;

__attribute__((used)) static void xc_wait(int wait_ms)
{
 msleep(wait_ms);
}
