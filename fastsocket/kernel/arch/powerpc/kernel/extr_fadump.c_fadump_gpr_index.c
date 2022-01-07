
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GPR_MASK ;
 int REG_ID (char*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static inline int fadump_gpr_index(u64 id)
{
 int i = -1;
 char str[3];

 if ((id & GPR_MASK) == REG_ID("GPR")) {

  id &= ~GPR_MASK;
  id >>= 24;
  str[2] = '\0';
  str[1] = id & 0xff;
  str[0] = (id >> 8) & 0xff;
  sscanf(str, "%d", &i);
  if (i > 31)
   i = -1;
 }
 return i;
}
