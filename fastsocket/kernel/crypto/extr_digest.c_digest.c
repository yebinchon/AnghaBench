
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct hash_desc {int dummy; } ;


 int EDEADLK ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int final (struct hash_desc*,int *) ;
 int in_irq () ;
 int init (struct hash_desc*) ;
 int update2 (struct hash_desc*,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int digest(struct hash_desc *desc,
    struct scatterlist *sg, unsigned int nbytes, u8 *out)
{
 if (WARN_ON_ONCE(in_irq()))
  return -EDEADLK;

 init(desc);
 update2(desc, sg, nbytes);
 return final(desc, out);
}
