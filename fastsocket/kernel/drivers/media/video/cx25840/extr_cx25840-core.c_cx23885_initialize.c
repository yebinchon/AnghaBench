
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int id; int aud_input; int vid_input; int fw_wait; int fw_work; } ;


 int CX25840_AUD_INT_CTRL_REG ;
 int CX25840_AUD_INT_STAT_REG ;
 int CX25840_VID_INT_STAT_REG ;
 int DEFINE_WAIT (int ) ;
 int INIT_WORK (int *,int ) ;
 int TASK_UNINTERRUPTIBLE ;



 struct workqueue_struct* create_singlethread_workqueue (char*) ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_std_setup (struct i2c_client*) ;
 int cx25840_work_handler ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int cx25840_write4 (struct i2c_client*,int,int) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int finish_wait (int *,int *) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int init_waitqueue_head (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int queue_work (struct workqueue_struct*,int *) ;
 int schedule () ;
 int set_input (struct i2c_client*,int ,int ) ;
 struct cx25840_state* to_state (int ) ;
 int wait ;

__attribute__((used)) static void cx23885_initialize(struct i2c_client *client)
{
 DEFINE_WAIT(wait);
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 struct workqueue_struct *q;






 cx25840_write(client, 0x000, 0);


 cx25840_and_or(client, 0x102, ~0x01, 0x01);
 cx25840_and_or(client, 0x102, ~0x01, 0x00);


 cx25840_and_or(client, 0x803, ~0x10, 0x00);


 cx25840_write(client, 0x398, 0);







 cx25840_write(client, 0x2, 0x76);


 cx25840_write(client, 0x1, 0x40);


 switch (state->id) {
 case 128:




  cx25840_write4(client, 0x11c, 0x00e8ba26);
  cx25840_write4(client, 0x118, 0x0000040b);
  break;
 case 129:




  cx25840_write4(client, 0x11c, 0x01d1744c);
  cx25840_write4(client, 0x118, 0x00000416);
  break;
 case 130:
 default:




  cx25840_write4(client, 0x11c, 0x00000000);
  cx25840_write4(client, 0x118, 0x00000414);
  break;
 }


 cx25840_write4(client, 0x33c, 0x00000001);


 cx25840_write4(client, 0x340, 0x0df7df83);
 cx25840_write4(client, 0x10c, 0x002be2c9);
 cx25840_write4(client, 0x108, 0x0000040f);


 cx25840_write4(client, 0x414, 0x00107d12);


 cx25840_write4(client, 0x420, 0x3d008282);
 switch (state->id) {
 case 128:





  cx25840_write4(client, 0x114, 0x00bedfa4);
  cx25840_write4(client, 0x110, 0x000a0307);
  break;
 case 129:





  cx25840_write4(client, 0x114, 0x017dbf48);
  cx25840_write4(client, 0x110, 0x000a030e);
  break;
 case 130:
 default:





  cx25840_write4(client, 0x114, 0x01bf0c9e);
  cx25840_write4(client, 0x110, 0x000a030c);
  break;
 };


 cx25840_write(client, 0x102, 0x10);


 cx25840_write(client, 0x103, 0x11);


 cx25840_write(client, 0x400, 0);


 cx25840_write(client, 0x401, 0xe8);


 cx25840_write(client, 0x144, 0x05);







 cx25840_write(client, 0x160, 0x1d);
 cx25840_write(client, 0x164, 0x00);





 INIT_WORK(&state->fw_work, cx25840_work_handler);
 init_waitqueue_head(&state->fw_wait);
 q = create_singlethread_workqueue("cx25840_fw");
 prepare_to_wait(&state->fw_wait, &wait, TASK_UNINTERRUPTIBLE);
 queue_work(q, &state->fw_work);
 schedule();
 finish_wait(&state->fw_wait, &wait);
 destroy_workqueue(q);

 cx25840_std_setup(client);


 set_input(client, state->vid_input, state->aud_input);


 cx25840_and_or(client, 0x803, ~0x10, 0x10);


 cx25840_write4(client, CX25840_VID_INT_STAT_REG, 0xffffffff);


 cx25840_write(client, CX25840_AUD_INT_CTRL_REG, 0xff);
 cx25840_write(client, CX25840_AUD_INT_STAT_REG, 0xff);
}
