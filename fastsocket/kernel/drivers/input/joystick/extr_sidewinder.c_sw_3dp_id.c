
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int,int,char*,char*) ;
 int sw_get_bits (unsigned char*,int,int,int) ;

__attribute__((used)) static void sw_3dp_id(unsigned char *buf, char *comment, size_t size)
{
 int i;
 char pnp[8], rev[9];

 for (i = 0; i < 7; i++)
  pnp[i] = sw_get_bits(buf, 24+8*i, 8, 1);

 for (i = 0; i < 8; i++)
  rev[i] = sw_get_bits(buf, 88+8*i, 8, 1);

 pnp[7] = rev[8] = 0;

 snprintf(comment, size, " [PnP %d.%02d id %s rev %s]",
  (int) ((sw_get_bits(buf, 8, 6, 1) << 6) |
   sw_get_bits(buf, 16, 6, 1)) / 100,
  (int) ((sw_get_bits(buf, 8, 6, 1) << 6) |
   sw_get_bits(buf, 16, 6, 1)) % 100,
   pnp, rev);
}
