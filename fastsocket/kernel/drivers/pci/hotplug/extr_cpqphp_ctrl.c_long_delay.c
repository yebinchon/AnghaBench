
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jiffies_to_msecs (int) ;
 int msleep_interruptible (int ) ;

__attribute__((used)) static void long_delay(int delay)
{






 msleep_interruptible(jiffies_to_msecs(delay));
}
