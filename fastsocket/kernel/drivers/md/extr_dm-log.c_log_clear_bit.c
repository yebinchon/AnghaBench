
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct log_c {int touched_dirtied; } ;


 int ext2_clear_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline void log_clear_bit(struct log_c *l,
     uint32_t *bs, unsigned bit)
{
 ext2_clear_bit(bit, (unsigned long *) bs);
 l->touched_dirtied = 1;
}
