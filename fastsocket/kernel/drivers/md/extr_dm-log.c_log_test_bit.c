
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ext2_test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline int log_test_bit(uint32_t *bs, unsigned bit)
{
 return ext2_test_bit(bit, (unsigned long *) bs) ? 1 : 0;
}
