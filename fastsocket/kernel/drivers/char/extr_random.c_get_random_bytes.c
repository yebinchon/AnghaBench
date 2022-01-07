
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_get_random_long (unsigned long*) ;
 int extract_entropy (int *,char*,int,int ,int ) ;
 int memcpy (char*,unsigned long*,int) ;
 int min (int,int) ;
 int nonblocking_pool ;

void get_random_bytes(void *buf, int nbytes)
{
 char *p = buf;

 while (nbytes) {
  unsigned long v;
  int chunk = min(nbytes, (int)sizeof(unsigned long));

  if (!arch_get_random_long(&v))
   break;

  memcpy(p, &v, chunk);
  p += chunk;
  nbytes -= chunk;
 }

 extract_entropy(&nonblocking_pool, p, nbytes, 0, 0);
}
