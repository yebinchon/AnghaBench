
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ H_SUCCESS ;
 scalar_t__ plpar_get_term_char (int ,unsigned long*,char*) ;

int hvc_get_chars(uint32_t vtermno, char *buf, int count)
{
 unsigned long got;

 if (plpar_get_term_char(vtermno, &got, buf) == H_SUCCESS)
  return got;

 return 0;
}
