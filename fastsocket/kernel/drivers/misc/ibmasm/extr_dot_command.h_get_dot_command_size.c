
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dot_command_header {size_t command_size; size_t data_size; } ;



__attribute__((used)) static inline size_t get_dot_command_size(void *buffer)
{
 struct dot_command_header *cmd = (struct dot_command_header *)buffer;
 return sizeof(struct dot_command_header) + cmd->command_size + cmd->data_size;
}
