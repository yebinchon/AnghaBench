
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {struct device* next; } ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {int c_lflag; } ;


 int ECHO ;
 int ICANON ;
 int ISIG ;
 int STDIN_FILENO ;
 int TCSANOW ;
 TYPE_3__ devices ;
 TYPE_1__ orig_term ;
 int reset_device (struct device*) ;
 int tcsetattr (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void cleanup_devices(void)
{
 struct device *dev;

 for (dev = devices.dev; dev; dev = dev->next)
  reset_device(dev);


 if (orig_term.c_lflag & (ISIG|ICANON|ECHO))
  tcsetattr(STDIN_FILENO, TCSANOW, &orig_term);
}
