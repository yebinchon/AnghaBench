
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; struct stliport* driver_data; } ;
struct TYPE_2__ {int sigvalue; } ;
struct stliport {size_t brdnr; TYPE_1__ asig; } ;
struct stlibrd {int dummy; } ;
struct file {int dummy; } ;
typedef int asysigs_t ;


 int A_GETSIGNALS ;
 int EIO ;
 int ENODEV ;
 int TTY_IO_ERROR ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,TYPE_1__*,int,int) ;
 int stli_mktiocm (int ) ;
 size_t stli_nrbrds ;

__attribute__((used)) static int stli_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct stliport *portp = tty->driver_data;
 struct stlibrd *brdp;
 int rc;

 if (portp == ((void*)0))
  return -ENODEV;
 if (portp->brdnr >= stli_nrbrds)
  return 0;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return 0;
 if (tty->flags & (1 << TTY_IO_ERROR))
  return -EIO;

 if ((rc = stli_cmdwait(brdp, portp, A_GETSIGNALS,
          &portp->asig, sizeof(asysigs_t), 1)) < 0)
  return rc;

 return stli_mktiocm(portp->asig.sigvalue);
}
