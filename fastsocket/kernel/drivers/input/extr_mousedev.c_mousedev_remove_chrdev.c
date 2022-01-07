
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {size_t minor; } ;


 int ** mousedev_table ;
 int mousedev_table_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mousedev_remove_chrdev(struct mousedev *mousedev)
{
 mutex_lock(&mousedev_table_mutex);
 mousedev_table[mousedev->minor] = ((void*)0);
 mutex_unlock(&mousedev_table_mutex);
}
