
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct hash_desc {int dummy; } ;


 int EDEADLK ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int in_irq () ;
 int update2 (struct hash_desc*,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int update(struct hash_desc *desc,
    struct scatterlist *sg, unsigned int nbytes)
{
 if (WARN_ON_ONCE(in_irq()))
  return -EDEADLK;
 return update2(desc, sg, nbytes);
}
