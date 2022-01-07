
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm109_dev {scalar_t__ open; } ;


 int cm109_toggle_buzzer_async (struct cm109_dev*) ;

__attribute__((used)) static void cm109_restore_state(struct cm109_dev *dev)
{
 if (dev->open) {




  cm109_toggle_buzzer_async(dev);
 }
}
