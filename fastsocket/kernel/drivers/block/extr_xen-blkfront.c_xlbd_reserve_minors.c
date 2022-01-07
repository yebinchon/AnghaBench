
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BITS_TO_LONGS (unsigned int) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __set_bit (unsigned int,unsigned long*) ;
 unsigned int find_next_bit (unsigned long*,unsigned int,unsigned int) ;
 int kfree (unsigned long*) ;
 unsigned long* kzalloc (int,int ) ;
 int memcpy (unsigned long*,unsigned long*,int) ;
 int minor_lock ;
 unsigned long* minors ;
 unsigned int nr_minors ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int xlbd_reserve_minors(unsigned int minor, unsigned int nr)
{
 unsigned int end = minor + nr;
 int rc;

 if (end > nr_minors) {
  unsigned long *bitmap, *old;

  bitmap = kzalloc(BITS_TO_LONGS(end) * sizeof(*bitmap),
     GFP_KERNEL);
  if (bitmap == ((void*)0))
   return -ENOMEM;

  spin_lock(&minor_lock);
  if (end > nr_minors) {
   old = minors;
   memcpy(bitmap, minors,
          BITS_TO_LONGS(nr_minors) * sizeof(*bitmap));
   minors = bitmap;
   nr_minors = BITS_TO_LONGS(end) * BITS_PER_LONG;
  } else
   old = bitmap;
  spin_unlock(&minor_lock);
  kfree(old);
 }

 spin_lock(&minor_lock);
 if (find_next_bit(minors, end, minor) >= end) {
  for (; minor < end; ++minor)
   __set_bit(minor, minors);
  rc = 0;
 } else
  rc = -EBUSY;
 spin_unlock(&minor_lock);

 return rc;
}
