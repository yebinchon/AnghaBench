
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUN3X_IDPROM ;

unsigned char
prom_get_idprom(char *idbuf, int num_bytes)
{
        int i;


 for (i = 0; i < num_bytes; i++)
  idbuf[i] = ((char *)SUN3X_IDPROM)[i];

        return idbuf[0];
}
