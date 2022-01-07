
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlpanel {unsigned int iobase; int (* isr ) (struct stlpanel*,unsigned int) ;} ;
struct stlbrd {int iostatus; struct stlpanel** panels; } ;


 int EIO_INTRPEND ;
 int brd_lock ;
 int inb (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct stlpanel*,unsigned int) ;

__attribute__((used)) static int stl_eiointr(struct stlbrd *brdp)
{
 struct stlpanel *panelp;
 unsigned int iobase;
 int handled = 0;

 spin_lock(&brd_lock);
 panelp = brdp->panels[0];
 iobase = panelp->iobase;
 while (inb(brdp->iostatus) & EIO_INTRPEND) {
  handled = 1;
  (* panelp->isr)(panelp, iobase);
 }
 spin_unlock(&brd_lock);
 return handled;
}
