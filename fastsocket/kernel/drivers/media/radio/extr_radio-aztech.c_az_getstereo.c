
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aztech {int lock; int io; } ;


 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int az_getstereo(struct aztech *az)
{
 int stereo = 1;

 mutex_lock(&az->lock);
 if (inb(az->io) & 1)
  stereo = 0;
 mutex_unlock(&az->lock);
 return stereo;
}
