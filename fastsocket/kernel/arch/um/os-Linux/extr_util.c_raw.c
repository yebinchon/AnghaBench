
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int CATCH_EINTR (int) ;
 int TCSADRAIN ;
 int cfmakeraw (struct termios*) ;
 int errno ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

int raw(int fd)
{
 struct termios tt;
 int err;

 CATCH_EINTR(err = tcgetattr(fd, &tt));
 if (err < 0)
  return -errno;

 cfmakeraw(&tt);

 CATCH_EINTR(err = tcsetattr(fd, TCSADRAIN, &tt));
 if (err < 0)
  return -errno;





 return 0;
}
