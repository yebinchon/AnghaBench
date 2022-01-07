
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; int is_open; int data_buffer; int data_pending; int user_read_timer; } ;
struct inode {int dummy; } ;
struct file {struct tpm_chip* private_data; } ;


 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int del_singleshot_timer_sync (int *) ;
 int flush_scheduled_work () ;
 int kfree (int ) ;
 int put_device (int ) ;

int tpm_release(struct inode *inode, struct file *file)
{
 struct tpm_chip *chip = file->private_data;

 del_singleshot_timer_sync(&chip->user_read_timer);
 flush_scheduled_work();
 file->private_data = ((void*)0);
 atomic_set(&chip->data_pending, 0);
 kfree(chip->data_buffer);
 clear_bit(0, &chip->is_open);
 put_device(chip->dev);
 return 0;
}
