
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ram_console_buffer {int start; int * data; } ;


 int ECC_BLOCK_SIZE ;
 int ECC_SIZE ;
 int memcpy (int *,char const*,unsigned int) ;
 struct ram_console_buffer* ram_console_buffer ;
 int ram_console_buffer_size ;
 int ram_console_encode_rs8 (int *,int,int *) ;
 int * ram_console_par_buffer ;

__attribute__((used)) static void ram_console_update(const char *s, unsigned int count)
{
 struct ram_console_buffer *buffer = ram_console_buffer;






 memcpy(buffer->data + buffer->start, s, count);
}
