
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avc_command_frame {int dummy; } ;


 int ALIGN (int,int) ;
 int LAST_OPERAND ;
 int clear_operands (struct avc_command_frame*,int,int) ;

__attribute__((used)) static void pad_operands(struct avc_command_frame *c, int from)
{
 int to = ALIGN(from, 4);

 if (from <= to && to <= LAST_OPERAND)
  clear_operands(c, from, to);
}
