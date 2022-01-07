
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int irq_handler_t ;
struct TYPE_2__ {int detect_delay; } ;


 TYPE_1__ csb726_mci_data ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int csb726_mci_init(struct device *dev,
  irq_handler_t detect, void *data)
{
 csb726_mci_data.detect_delay = msecs_to_jiffies(500);
 return 0;
}
