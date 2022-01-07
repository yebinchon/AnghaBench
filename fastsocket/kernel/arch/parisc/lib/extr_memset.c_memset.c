
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int op_t ;


 int OPSIZ ;

void *
memset (void *dstpp, int sc, size_t len)
{
  unsigned int c = sc;
  long int dstp = (long int) dstpp;

  if (len >= 8)
    {
      size_t xlen;
      op_t cccc;

      cccc = (unsigned char) c;
      cccc |= cccc << 8;
      cccc |= cccc << 16;
      if (OPSIZ > 4)

 cccc |= (cccc << 16) << 16;



      while (dstp % OPSIZ != 0)
 {
   ((unsigned char *) dstp)[0] = c;
   dstp += 1;
   len -= 1;
 }


      xlen = len / (OPSIZ * 8);
      while (xlen > 0)
 {
   ((op_t *) dstp)[0] = cccc;
   ((op_t *) dstp)[1] = cccc;
   ((op_t *) dstp)[2] = cccc;
   ((op_t *) dstp)[3] = cccc;
   ((op_t *) dstp)[4] = cccc;
   ((op_t *) dstp)[5] = cccc;
   ((op_t *) dstp)[6] = cccc;
   ((op_t *) dstp)[7] = cccc;
   dstp += 8 * OPSIZ;
   xlen -= 1;
 }
      len %= OPSIZ * 8;


      xlen = len / OPSIZ;
      while (xlen > 0)
 {
   ((op_t *) dstp)[0] = cccc;
   dstp += OPSIZ;
   xlen -= 1;
 }
      len %= OPSIZ;
    }


  while (len > 0)
    {
      ((unsigned char *) dstp)[0] = c;
      dstp += 1;
      len -= 1;
    }

  return dstpp;
}
