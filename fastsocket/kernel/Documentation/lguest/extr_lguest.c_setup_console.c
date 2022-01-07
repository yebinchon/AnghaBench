
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int c_lflag; } ;
struct device {scalar_t__ priv; } ;
struct console_abort {scalar_t__ count; } ;
struct TYPE_2__ {int device_num; } ;


 int ECHO ;
 int ICANON ;
 int ISIG ;
 int STDIN_FILENO ;
 int TCSANOW ;
 int VIRTIO_ID_CONSOLE ;
 int VIRTQUEUE_NUM ;
 int add_virtqueue (struct device*,int ,int ) ;
 int console_input ;
 int console_output ;
 TYPE_1__ devices ;
 scalar_t__ malloc (int) ;
 struct device* new_device (char*,int ) ;
 struct termios orig_term ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int verbose (char*,int ) ;

__attribute__((used)) static void setup_console(void)
{
 struct device *dev;


 if (tcgetattr(STDIN_FILENO, &orig_term) == 0) {
  struct termios term = orig_term;




  term.c_lflag &= ~(ISIG|ICANON|ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &term);
 }

 dev = new_device("console", VIRTIO_ID_CONSOLE);


 dev->priv = malloc(sizeof(struct console_abort));
 ((struct console_abort *)dev->priv)->count = 0;







 add_virtqueue(dev, VIRTQUEUE_NUM, console_input);
 add_virtqueue(dev, VIRTQUEUE_NUM, console_output);

 verbose("device %u: console\n", ++devices.device_num);
}
