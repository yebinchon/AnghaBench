
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {unsigned int io_min; unsigned int logical_block_size; unsigned int physical_block_size; } ;



void blk_limits_io_min(struct queue_limits *limits, unsigned int min)
{
 limits->io_min = min;

 if (limits->io_min < limits->logical_block_size)
  limits->io_min = limits->logical_block_size;

 if (limits->io_min < limits->physical_block_size)
  limits->io_min = limits->physical_block_size;
}
