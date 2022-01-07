
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void dm_bufio_unlock(struct dm_bufio_client *c)
{
 mutex_unlock(&c->lock);
}
