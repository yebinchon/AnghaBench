
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pioqueue {int dummy; } ;


 int cancel_transfers (struct b43legacy_pioqueue*) ;
 int kfree (struct b43legacy_pioqueue*) ;

__attribute__((used)) static void b43legacy_destroy_pioqueue(struct b43legacy_pioqueue *queue)
{
 if (!queue)
  return;

 cancel_transfers(queue);
 kfree(queue);
}
