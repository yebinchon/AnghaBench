
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int __clear_bit (unsigned int,int ) ;
 int minor_lock ;
 int minors ;
 unsigned int nr_minors ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void xlbd_release_minors(unsigned int minor, unsigned int nr)
{
 unsigned int end = minor + nr;

 BUG_ON(end > nr_minors);
 spin_lock(&minor_lock);
 for (; minor < end; ++minor)
  __clear_bit(minor, minors);
 spin_unlock(&minor_lock);
}
