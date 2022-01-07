
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_icache_range (int,int) ;
 int memcpy (void*,void*,unsigned int) ;
 int vectors_high () ;

void set_fiq_handler(void *start, unsigned int length)
{
 memcpy((void *)0xffff001c, start, length);
 flush_icache_range(0xffff001c, 0xffff001c + length);
 if (!vectors_high())
  flush_icache_range(0x1c, 0x1c + length);
}
