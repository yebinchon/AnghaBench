
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int flags; unsigned int next; } ;


 int VRING_DESC_F_NEXT ;
 int errx (int,char*,unsigned int) ;
 int wmb () ;

__attribute__((used)) static unsigned next_desc(struct vring_desc *desc,
     unsigned int i, unsigned int max)
{
 unsigned int next;


 if (!(desc[i].flags & VRING_DESC_F_NEXT))
  return max;


 next = desc[i].next;

 wmb();

 if (next >= max)
  errx(1, "Desc next is %u", next);

 return next;
}
