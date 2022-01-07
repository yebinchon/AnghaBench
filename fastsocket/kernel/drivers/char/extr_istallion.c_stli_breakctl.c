
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct stliport* driver_data; } ;
struct stliport {size_t brdnr; } ;
struct stlibrd {int dummy; } ;


 int A_BREAK ;
 long BREAKOFF ;
 long BREAKON ;
 int EINVAL ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,long*,int,int ) ;
 size_t stli_nrbrds ;

__attribute__((used)) static int stli_breakctl(struct tty_struct *tty, int state)
{
 struct stlibrd *brdp;
 struct stliport *portp;
 long arg;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return -EINVAL;
 if (portp->brdnr >= stli_nrbrds)
  return -EINVAL;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return -EINVAL;

 arg = (state == -1) ? BREAKON : BREAKOFF;
 stli_cmdwait(brdp, portp, A_BREAK, &arg, sizeof(long), 0);
 return 0;
}
