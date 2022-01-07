
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw_list {struct serio_raw* serio_raw; } ;
struct serio_raw {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_list* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_raw_cleanup (struct serio_raw*) ;
 int serio_raw_mutex ;

__attribute__((used)) static int serio_raw_release(struct inode *inode, struct file *file)
{
 struct serio_raw_list *list = file->private_data;
 struct serio_raw *serio_raw = list->serio_raw;

 mutex_lock(&serio_raw_mutex);

 serio_raw_cleanup(serio_raw);

 mutex_unlock(&serio_raw_mutex);
 return 0;
}
