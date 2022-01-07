
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aztech {int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,int ) ;
 int volconvert (int) ;

__attribute__((used)) static int az_setvol(struct aztech *az, int vol)
{
 mutex_lock(&az->lock);
 outb(volconvert(vol), az->io);
 mutex_unlock(&az->lock);
 return 0;
}
