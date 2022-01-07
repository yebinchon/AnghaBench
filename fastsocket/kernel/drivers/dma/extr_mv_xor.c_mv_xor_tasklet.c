
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int dummy; } ;


 int __mv_xor_slot_cleanup (struct mv_xor_chan*) ;

__attribute__((used)) static void mv_xor_tasklet(unsigned long data)
{
 struct mv_xor_chan *chan = (struct mv_xor_chan *) data;
 __mv_xor_slot_cleanup(chan);
}
