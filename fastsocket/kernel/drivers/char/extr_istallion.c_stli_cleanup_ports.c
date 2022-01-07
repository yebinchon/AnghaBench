
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct stliport {int port; } ;
struct stlibrd {struct stliport** ports; } ;


 unsigned int STL_MAXPORTS ;
 int kfree (struct stliport*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void stli_cleanup_ports(struct stlibrd *brdp)
{
 struct stliport *portp;
 unsigned int j;
 struct tty_struct *tty;

 for (j = 0; j < STL_MAXPORTS; j++) {
  portp = brdp->ports[j];
  if (portp != ((void*)0)) {
   tty = tty_port_tty_get(&portp->port);
   if (tty != ((void*)0)) {
    tty_hangup(tty);
    tty_kref_put(tty);
   }
   kfree(portp);
  }
 }
}
