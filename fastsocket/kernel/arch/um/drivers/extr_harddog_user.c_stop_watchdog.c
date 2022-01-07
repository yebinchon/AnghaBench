
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

void stop_watchdog(int in_fd, int out_fd)
{
 close(in_fd);
 close(out_fd);
}
