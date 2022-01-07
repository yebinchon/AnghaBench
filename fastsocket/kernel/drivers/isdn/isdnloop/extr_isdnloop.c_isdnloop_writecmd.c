
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_8__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_9__ {char* omsg; size_t optr; TYPE_1__ interface; int myid; } ;
typedef TYPE_2__ isdnloop_card ;
struct TYPE_10__ {int arg; int driver; int command; } ;
typedef TYPE_3__ isdn_ctrl ;


 int EFAULT ;
 int ISDN_STAT_STAVAIL ;
 scalar_t__ copy_from_user (char*,char const*,int) ;
 int isdnloop_parse_cmd (TYPE_2__*) ;
 int isdnloop_putmsg (TYPE_2__*,char) ;
 int memcpy (char*,char const*,int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int
isdnloop_writecmd(const u_char * buf, int len, int user, isdnloop_card * card)
{
 int xcount = 0;
 int ocount = 1;
 isdn_ctrl cmd;

 while (len) {
  int count = len;
  u_char *p;
  u_char msg[0x100];

  if (count > 255)
   count = 255;
  if (user) {
   if (copy_from_user(msg, buf, count))
    return -EFAULT;
  } else
   memcpy(msg, buf, count);
  isdnloop_putmsg(card, '>');
  for (p = msg; count > 0; count--, p++) {
   len--;
   xcount++;
   isdnloop_putmsg(card, *p);
   card->omsg[card->optr] = *p;
   if (*p == '\n') {
    card->omsg[card->optr] = '\0';
    card->optr = 0;
    isdnloop_parse_cmd(card);
    if (len) {
     isdnloop_putmsg(card, '>');
     ocount++;
    }
   } else {
    if (card->optr < 59)
     card->optr++;
   }
   ocount++;
  }
 }
 cmd.command = ISDN_STAT_STAVAIL;
 cmd.driver = card->myid;
 cmd.arg = ocount;
 card->interface.statcallb(&cmd);
 return xcount;
}
