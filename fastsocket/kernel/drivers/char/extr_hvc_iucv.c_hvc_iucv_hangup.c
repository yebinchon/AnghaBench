
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_path {int dummy; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; scalar_t__ tty_state; int lock; scalar_t__ is_console; struct iucv_path* path; } ;


 scalar_t__ IUCV_CONNECTED ;
 scalar_t__ IUCV_SEVERED ;
 scalar_t__ TTY_CLOSED ;
 scalar_t__ TTY_OPENED ;
 int hvc_iucv_cleanup (struct hvc_iucv_private*) ;
 int hvc_kick () ;
 int iucv_path_free (struct iucv_path*) ;
 int iucv_path_sever (struct iucv_path*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hvc_iucv_hangup(struct hvc_iucv_private *priv)
{
 struct iucv_path *path;

 path = ((void*)0);
 spin_lock(&priv->lock);
 if (priv->iucv_state == IUCV_CONNECTED) {
  path = priv->path;
  priv->path = ((void*)0);
  priv->iucv_state = IUCV_SEVERED;
  if (priv->tty_state == TTY_CLOSED)
   hvc_iucv_cleanup(priv);
  else

   if (priv->is_console) {
    hvc_iucv_cleanup(priv);
    priv->tty_state = TTY_OPENED;
   } else
    hvc_kick();
 }
 spin_unlock(&priv->lock);


 if (path) {
  iucv_path_sever(path, ((void*)0));
  iucv_path_free(path);
 }
}
