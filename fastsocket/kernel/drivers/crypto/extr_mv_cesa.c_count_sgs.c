
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;



__attribute__((used)) static int count_sgs(struct scatterlist *sl, unsigned int total_bytes)
{
 int i = 0;

 do {
  total_bytes -= sl[i].length;
  i++;

 } while (total_bytes > 0);

 return i;
}
