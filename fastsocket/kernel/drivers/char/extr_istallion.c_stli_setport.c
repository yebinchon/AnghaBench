
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios; struct stliport* driver_data; } ;
struct stliport {size_t brdnr; } ;
struct stlibrd {int dummy; } ;
typedef int asyport_t ;


 int A_SETPORT ;
 int ENODEV ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,int *,int,int ) ;
 int stli_mkasyport (struct tty_struct*,struct stliport*,int *,int ) ;
 size_t stli_nrbrds ;

__attribute__((used)) static int stli_setport(struct tty_struct *tty)
{
 struct stliport *portp = tty->driver_data;
 struct stlibrd *brdp;
 asyport_t aport;

 if (portp == ((void*)0))
  return -ENODEV;
 if (portp->brdnr >= stli_nrbrds)
  return -ENODEV;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return -ENODEV;

 stli_mkasyport(tty, portp, &aport, tty->termios);
 return(stli_cmdwait(brdp, portp, A_SETPORT, &aport, sizeof(asyport_t), 0));
}
