
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MAX_XOR_BLOCKS ;
 int XOR_SIZE ;
 int xor_blocks (unsigned int,int ,void*,void**) ;

__attribute__((used)) static void xor_blocks_wrapper(unsigned n, unsigned long **data)
{
 BUG_ON(n < 2 || n > MAX_XOR_BLOCKS + 1);
 xor_blocks(n - 1, XOR_SIZE, (void *) data[0], (void **) data + 1);
}
