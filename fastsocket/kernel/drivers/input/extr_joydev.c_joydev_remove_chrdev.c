
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev {size_t minor; } ;


 int ** joydev_table ;
 int joydev_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void joydev_remove_chrdev(struct joydev *joydev)
{
 mutex_lock(&joydev_table_mutex);
 joydev_table[joydev->minor] = ((void*)0);
 mutex_unlock(&joydev_table_mutex);
}
