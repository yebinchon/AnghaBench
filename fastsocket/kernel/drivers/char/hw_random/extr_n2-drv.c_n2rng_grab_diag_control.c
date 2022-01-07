
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2rng {TYPE_1__* op; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int ENODEV ;
 int dev_err (int *,char*) ;
 int n2rng_try_read_ctl (struct n2rng*) ;
 int udelay (int) ;

__attribute__((used)) static int n2rng_grab_diag_control(struct n2rng *np)
{
 int i, busy_count, err = -ENODEV;

 busy_count = 0;
 for (i = 0; i < 100; i++) {
  err = n2rng_try_read_ctl(np);
  if (err != -EAGAIN)
   break;

  if (++busy_count > 100) {
   dev_err(&np->op->dev,
    "Grab diag control timeout.\n");
   return -ENODEV;
  }

  udelay(1);
 }

 return err;
}
