
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_chan {char* dev; int tt; scalar_t__ raw; } ;


 int CATCH_EINTR (int) ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int errno ;
 int open (char*,int) ;
 int raw (int) ;
 int tcgetattr (int,int *) ;

__attribute__((used)) static int tty_open(int input, int output, int primary, void *d,
      char **dev_out)
{
 struct tty_chan *data = d;
 int fd, err, mode = 0;

 if (input && output)
  mode = O_RDWR;
 else if (input)
  mode = O_RDONLY;
 else if (output)
  mode = O_WRONLY;

 fd = open(data->dev, mode);
 if (fd < 0)
  return -errno;

 if (data->raw) {
  CATCH_EINTR(err = tcgetattr(fd, &data->tt));
  if (err)
   return err;

  err = raw(fd);
  if (err)
   return err;
 }

 *dev_out = data->dev;
 return fd;
}
