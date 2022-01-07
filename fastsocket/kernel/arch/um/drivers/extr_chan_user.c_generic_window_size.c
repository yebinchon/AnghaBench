
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {unsigned short ws_row; unsigned short ws_col; } ;


 int TIOCGWINSZ ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct winsize*) ;

int generic_window_size(int fd, void *unused, unsigned short *rows_out,
   unsigned short *cols_out)
{
 struct winsize size;
 int ret;

 if (ioctl(fd, TIOCGWINSZ, &size) < 0)
  return -errno;

 ret = ((*rows_out != size.ws_row) || (*cols_out != size.ws_col));

 *rows_out = size.ws_row;
 *cols_out = size.ws_col;

 return ret;
}
