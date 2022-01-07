
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_chan {int fd; char* str; int tt; scalar_t__ raw; } ;


 int CATCH_EINTR (int) ;
 scalar_t__ isatty (int) ;
 int raw (int) ;
 int sprintf (char*,char*,int) ;
 int tcgetattr (int,int *) ;

__attribute__((used)) static int fd_open(int input, int output, int primary, void *d, char **dev_out)
{
 struct fd_chan *data = d;
 int err;

 if (data->raw && isatty(data->fd)) {
  CATCH_EINTR(err = tcgetattr(data->fd, &data->tt));
  if (err)
   return err;

  err = raw(data->fd);
  if (err)
   return err;
 }
 sprintf(data->str, "%d", data->fd);
 *dev_out = data->str;
 return data->fd;
}
