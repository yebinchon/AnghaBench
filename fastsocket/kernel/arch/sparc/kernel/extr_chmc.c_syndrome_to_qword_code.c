
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int syndrome_to_qword_code(int syndrome_code)
{
 if (syndrome_code < 128)
  syndrome_code += 16;
 else if (syndrome_code < 128 + 9)
  syndrome_code -= (128 - 7);
 else if (syndrome_code < (128 + 9 + 3))
  syndrome_code -= (128 + 9 - 4);
 else
  syndrome_code -= (128 + 9 + 3);
 return syndrome_code;
}
