
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_prime_file_private {int lock; int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void drm_prime_init_file_private(struct drm_prime_file_private *prime_fpriv)
{
 INIT_LIST_HEAD(&prime_fpriv->head);
 mutex_init(&prime_fpriv->lock);
}
