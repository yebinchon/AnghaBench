
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EAGAIN ;
 int SIZE_VIO_GET_CHARS ;
 unsigned long hvc_get_chars (int ,char*,int) ;
 int memmove (char*,char*,unsigned long) ;

__attribute__((used)) static int filtered_get_chars(uint32_t vtermno, char *buf, int count)
{
 unsigned long got;
 int i;






 if (count < SIZE_VIO_GET_CHARS)
  return -EAGAIN;

 got = hvc_get_chars(vtermno, buf, count);





 for (i = 1; i < got; ++i) {
  if (buf[i] == 0 && buf[i-1] == '\r') {
   --got;
   if (i < got)
    memmove(&buf[i], &buf[i+1],
     got - i);
  }
 }
 return got;
}
