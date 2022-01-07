
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct stliport* driver_data; } ;
struct stliport {size_t brdnr; } ;
struct stlibrd {int dummy; } ;
struct TYPE_4__ {char tximdch; int txctrl; int rxctrl; } ;
typedef TYPE_1__ asyctrl_t ;


 int A_PORTCTRL ;
 int CT_SENDCHR ;
 int CT_STARTFLOW ;
 int CT_STOPFLOW ;
 char START_CHAR (struct tty_struct*) ;
 char STOP_CHAR (struct tty_struct*) ;
 int memset (TYPE_1__*,int ,int) ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,TYPE_1__*,int,int ) ;
 size_t stli_nrbrds ;

__attribute__((used)) static void stli_sendxchar(struct tty_struct *tty, char ch)
{
 struct stlibrd *brdp;
 struct stliport *portp;
 asyctrl_t actrl;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 if (portp->brdnr >= stli_nrbrds)
  return;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return;

 memset(&actrl, 0, sizeof(asyctrl_t));
 if (ch == STOP_CHAR(tty)) {
  actrl.rxctrl = CT_STOPFLOW;
 } else if (ch == START_CHAR(tty)) {
  actrl.rxctrl = CT_STARTFLOW;
 } else {
  actrl.txctrl = CT_SENDCHR;
  actrl.tximdch = ch;
 }
 stli_cmdwait(brdp, portp, A_PORTCTRL, &actrl, sizeof(asyctrl_t), 0);
}
