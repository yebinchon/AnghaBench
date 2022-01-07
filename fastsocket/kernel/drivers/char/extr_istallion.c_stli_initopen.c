
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {int termios; } ;
struct TYPE_7__ {int data; int sigvalue; int signal; } ;
struct stliport {TYPE_1__ asig; int sigs; int state; } ;
struct stlibrd {int dummy; } ;
typedef int asysigs_t ;
typedef TYPE_1__ asyport_t ;
typedef TYPE_1__ asynotify_t ;


 int A_GETSIGNALS ;
 int A_SETNOTIFY ;
 int A_SETPORT ;
 int A_SETSIGNALS ;
 int DT_RXBREAK ;
 int DT_RXBUSY ;
 int DT_TXEMPTY ;
 int DT_TXLOW ;
 int SG_DCD ;
 int ST_GETSIGS ;
 int memset (TYPE_1__*,int ,int) ;
 int set_bit (int ,int *) ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,TYPE_1__*,int,int) ;
 int stli_mkasyport (struct tty_struct*,struct stliport*,TYPE_1__*,int ) ;
 int stli_mkasysigs (TYPE_1__*,int,int) ;
 int stli_mktiocm (int ) ;
 int stli_rawopen (struct stlibrd*,struct stliport*,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int stli_initopen(struct tty_struct *tty,
    struct stlibrd *brdp, struct stliport *portp)
{
 asynotify_t nt;
 asyport_t aport;
 int rc;

 if ((rc = stli_rawopen(brdp, portp, 0, 1)) < 0)
  return rc;

 memset(&nt, 0, sizeof(asynotify_t));
 nt.data = (DT_TXLOW | DT_TXEMPTY | DT_RXBUSY | DT_RXBREAK);
 nt.signal = SG_DCD;
 if ((rc = stli_cmdwait(brdp, portp, A_SETNOTIFY, &nt,
     sizeof(asynotify_t), 0)) < 0)
  return rc;

 stli_mkasyport(tty, portp, &aport, tty->termios);
 if ((rc = stli_cmdwait(brdp, portp, A_SETPORT, &aport,
     sizeof(asyport_t), 0)) < 0)
  return rc;

 set_bit(ST_GETSIGS, &portp->state);
 if ((rc = stli_cmdwait(brdp, portp, A_GETSIGNALS, &portp->asig,
     sizeof(asysigs_t), 1)) < 0)
  return rc;
 if (test_and_clear_bit(ST_GETSIGS, &portp->state))
  portp->sigs = stli_mktiocm(portp->asig.sigvalue);
 stli_mkasysigs(&portp->asig, 1, 1);
 if ((rc = stli_cmdwait(brdp, portp, A_SETSIGNALS, &portp->asig,
     sizeof(asysigs_t), 0)) < 0)
  return rc;

 return 0;
}
