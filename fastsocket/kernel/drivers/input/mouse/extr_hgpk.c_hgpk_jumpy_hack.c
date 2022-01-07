
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int recalib_wq; } ;


 scalar_t__ abs (int) ;
 int hgpk_err (struct psmouse*,char*,scalar_t__,int,int) ;
 int jumpy_delay ;
 int msecs_to_jiffies (int ) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 scalar_t__ recalib_delta ;

__attribute__((used)) static void hgpk_jumpy_hack(struct psmouse *psmouse, int x, int y)
{
 struct hgpk_data *priv = psmouse->private;

 if (abs(x) > recalib_delta || abs(y) > recalib_delta) {
  hgpk_err(psmouse, ">%dpx jump detected (%d,%d)\n",
    recalib_delta, x, y);


  psmouse_queue_work(psmouse, &priv->recalib_wq,
    msecs_to_jiffies(jumpy_delay));
 }
}
