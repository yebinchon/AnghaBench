
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sysrq_key_table_key2index(int key)
{
 int retval;

 if ((key >= '0') && (key <= '9'))
  retval = key - '0';
 else if ((key >= 'a') && (key <= 'z'))
  retval = key + 10 - 'a';
 else
  retval = -1;
 return retval;
}
