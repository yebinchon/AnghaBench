
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int suseconds_t ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct hp_sdc_mlc_priv_s {scalar_t__ emtestmode; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int* ipacket; int opacket; int icount; scalar_t__ intimeout; int isem; TYPE_1__ instart; struct hp_sdc_mlc_priv_s* priv; } ;
typedef TYPE_2__ hil_mlc ;


 int HIL_ERR_INT ;
 int HIL_PKT_ADDR_MASK ;
 int HIL_PKT_CMD ;
 int HIL_PKT_DATA_MASK ;
 int USEC_PER_SEC ;
 int do_gettimeofday (struct timeval*) ;
 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

__attribute__((used)) static int hp_sdc_mlc_in(hil_mlc *mlc, suseconds_t timeout)
{
 struct hp_sdc_mlc_priv_s *priv;
 int rc = 2;

 priv = mlc->priv;


 if (down_trylock(&mlc->isem)) {
  struct timeval tv;
  if (priv->emtestmode) {
   mlc->ipacket[0] =
    HIL_ERR_INT | (mlc->opacket &
            (HIL_PKT_CMD |
      HIL_PKT_ADDR_MASK |
      HIL_PKT_DATA_MASK));
   mlc->icount = 14;

   goto wasup;
  }
  do_gettimeofday(&tv);
  tv.tv_usec += USEC_PER_SEC * (tv.tv_sec - mlc->instart.tv_sec);
  if (tv.tv_usec - mlc->instart.tv_usec > mlc->intimeout) {




   rc = 1;
   up(&mlc->isem);
  }
  goto done;
 }
 wasup:
 up(&mlc->isem);
 rc = 0;
 done:
 return rc;
}
