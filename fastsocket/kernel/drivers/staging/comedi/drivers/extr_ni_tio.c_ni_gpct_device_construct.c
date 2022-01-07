
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct_device {void (* write_register ) (struct ni_gpct*,unsigned int,int) ;unsigned int (* read_register ) (struct ni_gpct*,int) ;int variant; unsigned int num_counters; TYPE_1__* counters; int regs_lock; struct comedi_device* dev; } ;
struct ni_gpct {int dummy; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;
struct TYPE_2__ {int lock; struct ni_gpct_device* counter_dev; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int kfree (struct ni_gpct_device*) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct ni_gpct_device *ni_gpct_device_construct(struct comedi_device *dev,
      void (*write_register) (struct
         ni_gpct
         *
         counter,
         unsigned
         bits,
         enum
         ni_gpct_register
         reg),
      unsigned (*read_register)
      (struct ni_gpct * counter,
       enum ni_gpct_register reg),
      enum ni_gpct_variant variant,
      unsigned num_counters)
{
 unsigned i;

 struct ni_gpct_device *counter_dev =
     kzalloc(sizeof(struct ni_gpct_device), GFP_KERNEL);
 if (counter_dev == ((void*)0))
  return ((void*)0);
 counter_dev->dev = dev;
 counter_dev->write_register = write_register;
 counter_dev->read_register = read_register;
 counter_dev->variant = variant;
 spin_lock_init(&counter_dev->regs_lock);
 BUG_ON(num_counters == 0);
 counter_dev->counters =
     kzalloc(sizeof(struct ni_gpct) * num_counters, GFP_KERNEL);
 if (counter_dev->counters == ((void*)0)) {
  kfree(counter_dev);
  return ((void*)0);
 }
 for (i = 0; i < num_counters; ++i) {
  counter_dev->counters[i].counter_dev = counter_dev;
  spin_lock_init(&counter_dev->counters[i].lock);
 }
 counter_dev->num_counters = num_counters;
 return counter_dev;
}
