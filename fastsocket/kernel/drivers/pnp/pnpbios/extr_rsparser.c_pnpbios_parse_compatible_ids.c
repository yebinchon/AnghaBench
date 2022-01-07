
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnp_id {int dummy; } ;
struct pnp_dev {char* name; int dev; } ;


 unsigned char LARGE_TAG ;

 int PNP_EISA_ID_MASK ;
 int PNP_NAME_LEN ;


 int dev_err (int *,char*,...) ;
 struct pnp_id* pnp_add_id (struct pnp_dev*,char*) ;
 int pnp_eisa_id_to_string (int,char*) ;
 int strncpy (char*,unsigned char*,int) ;

__attribute__((used)) static unsigned char *pnpbios_parse_compatible_ids(unsigned char *p,
         unsigned char *end,
         struct pnp_dev *dev)
{
 int len, tag;
 u32 eisa_id;
 char id[8];
 struct pnp_id *dev_id;

 if (!p)
  return ((void*)0);

 while ((char *)p < (char *)end) {


  if (p[0] & LARGE_TAG) {
   len = (p[2] << 8) | p[1];
   tag = p[0];
  } else {
   len = p[0] & 0x07;
   tag = ((p[0] >> 3) & 0x0f);
  }

  switch (tag) {

  case 130:
   strncpy(dev->name, p + 3,
    len >= PNP_NAME_LEN ? PNP_NAME_LEN - 2 : len);
   dev->name[len >=
      PNP_NAME_LEN ? PNP_NAME_LEN - 1 : len] = '\0';
   break;

  case 129:
   if (len != 4)
    goto len_err;
   eisa_id = p[1] | p[2] << 8 | p[3] << 16 | p[4] << 24;
   pnp_eisa_id_to_string(eisa_id & PNP_EISA_ID_MASK, id);
   dev_id = pnp_add_id(dev, id);
   if (!dev_id)
    return ((void*)0);
   break;

  case 128:
   p = p + 2;
   return (unsigned char *)p;
   break;

  default:
len_err:
   dev_err(&dev->dev, "unknown tag %#x length %d\n",
    tag, len);
   break;
  }


  if (p[0] & LARGE_TAG)
   p += len + 3;
  else
   p += len + 1;
 }

 dev_err(&dev->dev, "no end tag in resource structure\n");

 return ((void*)0);
}
