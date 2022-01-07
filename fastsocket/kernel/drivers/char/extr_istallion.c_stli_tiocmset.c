
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; struct stliport* driver_data; } ;
struct stliport {size_t brdnr; int asig; } ;
struct stlibrd {int dummy; } ;
struct file {int dummy; } ;
typedef int asysigs_t ;


 int A_SETSIGNALS ;
 int EIO ;
 int ENODEV ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int TTY_IO_ERROR ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,int *,int,int ) ;
 int stli_mkasysigs (int *,int,int) ;
 size_t stli_nrbrds ;

__attribute__((used)) static int stli_tiocmset(struct tty_struct *tty, struct file *file,
    unsigned int set, unsigned int clear)
{
 struct stliport *portp = tty->driver_data;
 struct stlibrd *brdp;
 int rts = -1, dtr = -1;

 if (portp == ((void*)0))
  return -ENODEV;
 if (portp->brdnr >= stli_nrbrds)
  return 0;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return 0;
 if (tty->flags & (1 << TTY_IO_ERROR))
  return -EIO;

 if (set & TIOCM_RTS)
  rts = 1;
 if (set & TIOCM_DTR)
  dtr = 1;
 if (clear & TIOCM_RTS)
  rts = 0;
 if (clear & TIOCM_DTR)
  dtr = 0;

 stli_mkasysigs(&portp->asig, dtr, rts);

 return stli_cmdwait(brdp, portp, A_SETSIGNALS, &portp->asig,
       sizeof(asysigs_t), 0);
}
