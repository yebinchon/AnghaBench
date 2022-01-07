
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int csum_partial (char const*,int,unsigned int) ;
 int memcpy (char*,char const*,int) ;

unsigned int csum_partial_copy(const char *src, char *dst,
    int len, unsigned int sum)
{
 sum = csum_partial(src, len, sum);
 memcpy(dst, src, len);

 return sum;
}
