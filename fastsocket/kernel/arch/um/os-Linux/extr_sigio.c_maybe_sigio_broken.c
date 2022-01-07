
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isatty (int) ;
 scalar_t__ pty_close_sigio ;
 scalar_t__ pty_output_sigio ;
 int sigio_broken (int,int) ;

void maybe_sigio_broken(int fd, int read)
{
 if (!isatty(fd))
  return;

 if ((read || pty_output_sigio) && (!read || pty_close_sigio))
  return;

 sigio_broken(fd, read);
}
