
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int second; int minute; int hour; int year; int day; int month; } ;
union el_timestamp {TYPE_1__ b; scalar_t__ as_int; } ;


 int err_print_prefix ;
 int printk (char*,int ,int ,int ,int ,int ,int ,int ) ;

void
el_print_timestamp(union el_timestamp *timestamp)
{
 if (timestamp->as_int)
  printk("%s  TIMESTAMP: %d/%d/%02d %d:%02d:%0d\n",
         err_print_prefix,
         timestamp->b.month, timestamp->b.day,
         timestamp->b.year, timestamp->b.hour,
         timestamp->b.minute, timestamp->b.second);
}
