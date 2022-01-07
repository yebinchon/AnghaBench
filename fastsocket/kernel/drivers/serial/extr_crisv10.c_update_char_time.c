
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tcflag_t ;
struct TYPE_6__ {TYPE_2__* tty; } ;
struct e100_serial {int char_time_usec; int baud; int flush_time_usec; TYPE_3__ port; } ;
struct TYPE_5__ {TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;


 int CS7 ;
 int CSIZE ;
 int CSTOPB ;
 int MIN_FLUSH_TIME_USEC ;
 int PARENB ;

__attribute__((used)) static void update_char_time(struct e100_serial * info)
{
 tcflag_t cflags = info->port.tty->termios->c_cflag;
 int bits;



 if ((cflags & CSIZE) == CS7)
  bits = 9;
 else
  bits = 10;

 if (cflags & CSTOPB)
  bits++;

 if (cflags & PARENB)
  bits++;


 info->char_time_usec = ((bits * 1000000) / info->baud) + 1;
 info->flush_time_usec = 4*info->char_time_usec;
 if (info->flush_time_usec < MIN_FLUSH_TIME_USEC)
  info->flush_time_usec = MIN_FLUSH_TIME_USEC;

}
