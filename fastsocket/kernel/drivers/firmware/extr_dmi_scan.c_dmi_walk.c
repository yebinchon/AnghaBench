
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dmi_available ;
 int dmi_base ;
 int dmi_len ;
 int dmi_num ;
 int dmi_table (int *,int ,int ,void (*) (struct dmi_header const*,void*),void*) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;

int dmi_walk(void (*decode)(const struct dmi_header *, void *),
      void *private_data)
{
 u8 *buf;

 if (!dmi_available)
  return -1;

 buf = ioremap(dmi_base, dmi_len);
 if (buf == ((void*)0))
  return -1;

 dmi_table(buf, dmi_len, dmi_num, decode, private_data);

 iounmap(buf);
 return 0;
}
