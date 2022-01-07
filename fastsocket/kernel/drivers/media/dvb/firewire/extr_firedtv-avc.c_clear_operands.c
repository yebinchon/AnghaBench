
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avc_command_frame {int * operand; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void clear_operands(struct avc_command_frame *c, int from, int to)
{
 memset(&c->operand[from], 0, to - from + 1);
}
