
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int thread; } ;


 int wake_up_process (int ) ;

__attribute__((used)) static void chip_thread_wake(unsigned long data)
{
 struct CHIPSTATE *chip = (struct CHIPSTATE*)data;
 wake_up_process(chip->thread);
}
