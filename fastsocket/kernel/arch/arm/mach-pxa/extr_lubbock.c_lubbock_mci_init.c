
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int irq_handler_t ;
struct TYPE_3__ {unsigned long data; } ;


 int IRQF_SAMPLE_RANDOM ;
 int LUBBOCK_SD_IRQ ;
 int init_timer (TYPE_1__*) ;
 int lubbock_detect_int ;
 int mmc_detect_int ;
 TYPE_1__ mmc_timer ;
 int request_irq (int ,int ,int ,char*,void*) ;

__attribute__((used)) static int lubbock_mci_init(struct device *dev,
  irq_handler_t detect_int,
  void *data)
{

 mmc_detect_int = detect_int;
 init_timer(&mmc_timer);
 mmc_timer.data = (unsigned long) data;
 return request_irq(LUBBOCK_SD_IRQ, lubbock_detect_int,
   IRQF_SAMPLE_RANDOM, "lubbock-sd-detect", data);
}
