
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int bcount ;
 int button_consume_callbacks (scalar_t__) ;
 int button_output_buffer ;
 scalar_t__ button_press_count ;
 int button_wait_queue ;
 int kill_cad_pid (int ,int) ;
 scalar_t__ reboot_count ;
 int sprintf (int ,char*,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void button_sequence_finished (unsigned long parameters)
{




 button_consume_callbacks (button_press_count);
 bcount = sprintf (button_output_buffer, "%d\n", button_press_count);
 button_press_count = 0;
 wake_up_interruptible (&button_wait_queue);
}
