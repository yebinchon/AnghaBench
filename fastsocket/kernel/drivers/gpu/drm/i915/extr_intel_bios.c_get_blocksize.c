
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16
get_blocksize(void *p)
{
 u16 *block_ptr, block_size;

 block_ptr = (u16 *)((char *)p - 2);
 block_size = *block_ptr;
 return block_size;
}
