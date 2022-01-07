
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int add_used (struct virtqueue*,unsigned int,int) ;
 int trigger_irq (struct virtqueue*) ;

__attribute__((used)) static void add_used_and_trigger(struct virtqueue *vq, unsigned head, int len)
{
 add_used(vq, head, len);
 trigger_irq(vq);
}
