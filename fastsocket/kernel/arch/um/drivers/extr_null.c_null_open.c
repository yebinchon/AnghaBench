
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_NULL ;
 int O_RDWR ;
 int errno ;
 int open (int ,int ) ;

__attribute__((used)) static int null_open(int input, int output, int primary, void *d,
       char **dev_out)
{
 int fd;

 *dev_out = ((void*)0);

 fd = open(DEV_NULL, O_RDWR);
 return (fd < 0) ? -errno : fd;
}
