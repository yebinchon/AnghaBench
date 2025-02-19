
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 size_t B43_INTERFSTACK_SIZE ;
 int B43_WARN_ON (int) ;

__attribute__((used)) static void _stack_save(u32 *_stackptr, size_t *stackidx,
   u8 id, u16 offset, u16 value)
{
 u32 *stackptr = &(_stackptr[*stackidx]);

 B43_WARN_ON(offset & 0xF000);
 B43_WARN_ON(id & 0xF0);
 *stackptr = offset;
 *stackptr |= ((u32) id) << 12;
 *stackptr |= ((u32) value) << 16;
 (*stackidx)++;
 B43_WARN_ON(*stackidx >= B43_INTERFSTACK_SIZE);
}
