
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {unsigned int periodic_state; } ;


 int b43_periodic_every15sec (struct b43_wldev*) ;
 int b43_periodic_every30sec (struct b43_wldev*) ;
 int b43_periodic_every60sec (struct b43_wldev*) ;

__attribute__((used)) static void do_periodic_work(struct b43_wldev *dev)
{
 unsigned int state;

 state = dev->periodic_state;
 if (state % 4 == 0)
  b43_periodic_every60sec(dev);
 if (state % 2 == 0)
  b43_periodic_every30sec(dev);
 b43_periodic_every15sec(dev);
}
