
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;



__attribute__((used)) static int raise_blk_irq(int cpu, struct request *rq)
{
 return 1;
}
