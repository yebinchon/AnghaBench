
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek {int lock; int io; } ;


 int GEMTEK_NS ;
 int inb_p (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int gemtek_getsigstr(struct gemtek *gt)
{
 int sig;

 mutex_lock(&gt->lock);
 sig = inb_p(gt->io) & GEMTEK_NS ? 0 : 1;
 mutex_unlock(&gt->lock);
 return sig;
}
