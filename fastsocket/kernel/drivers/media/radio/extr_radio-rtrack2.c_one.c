
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtrack2 {int io; } ;


 int outb_p (int,int ) ;

__attribute__((used)) static void one(struct rtrack2 *dev)
{
 outb_p(5, dev->io);
 outb_p(7, dev->io);
 outb_p(5, dev->io);
}
