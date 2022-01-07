
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
debug_count_numargs(char *string)
{
 int numargs=0;

 while(*string) {
  if(*string++=='%')
   numargs++;
 }
 return(numargs);
}
