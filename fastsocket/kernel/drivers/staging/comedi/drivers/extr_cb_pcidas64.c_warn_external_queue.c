
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int comedi_error (struct comedi_device*,char*) ;

__attribute__((used)) static inline void warn_external_queue(struct comedi_device *dev)
{
 comedi_error(dev,
       "AO command and AI external channel queue cannot be used simultaneously.");
 comedi_error(dev,
       "Use internal AI channel queue (channels must be consecutive and use same range/aref)");
}
