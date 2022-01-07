
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOC_KEEPALIVE ;
 int fd ;
 int ioctl (int ,int ,int*) ;

__attribute__((used)) static void keep_alive(void)
{
    int dummy;

    ioctl(fd, WDIOC_KEEPALIVE, &dummy);
}
