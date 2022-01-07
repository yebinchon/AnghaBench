
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int count; scalar_t__ y_tally; scalar_t__ x_tally; int recalib_wq; } ;


 int abs (scalar_t__) ;
 int hgpk_dbg (struct psmouse*,char*,scalar_t__,scalar_t__) ;
 int msecs_to_jiffies (int ) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int spew_delay ;

__attribute__((used)) static void hgpk_spewing_hack(struct psmouse *psmouse,
         int l, int r, int x, int y)
{
 struct hgpk_data *priv = psmouse->private;



 if (l || r)
  return;

 priv->x_tally += x;
 priv->y_tally += y;

 if (++priv->count > 100) {
  if (abs(priv->x_tally) < 3 && abs(priv->y_tally) < 3) {
   hgpk_dbg(psmouse, "packet spew detected (%d,%d)\n",
     priv->x_tally, priv->y_tally);
   psmouse_queue_work(psmouse, &priv->recalib_wq,
        msecs_to_jiffies(spew_delay));
  }

  priv->count = 0;
  priv->x_tally = 0;
  priv->y_tally = 0;
 }
}
