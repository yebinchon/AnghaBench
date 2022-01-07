
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;


 int IORESOURCE_DISABLED ;
 unsigned char LARGE_TAG ;
 int dev_err (int *,char*,...) ;
 int pcibios_penalize_isa_irq (int,int) ;
 int pnp_add_dma_resource (struct pnp_dev*,int,int) ;
 int pnp_add_irq_resource (struct pnp_dev*,int,int) ;
 int pnp_dbg (int *,char*) ;
 int pnp_init_resources (struct pnp_dev*) ;
 int pnpbios_parse_allocated_ioresource (struct pnp_dev*,int,int) ;
 int pnpbios_parse_allocated_memresource (struct pnp_dev*,int,int) ;

__attribute__((used)) static unsigned char *pnpbios_parse_allocated_resource_data(struct pnp_dev *dev,
           unsigned char *p,
           unsigned char *end)
{
 unsigned int len, tag;
 int io, size, mask, i, flags;

 if (!p)
  return ((void*)0);

 pnp_dbg(&dev->dev, "parse allocated resources\n");

 pnp_init_resources(dev);

 while ((char *)p < (char *)end) {


  if (p[0] & LARGE_TAG) {
   len = (p[2] << 8) | p[1];
   tag = p[0];
  } else {
   len = p[0] & 0x07;
   tag = ((p[0] >> 3) & 0x0f);
  }

  switch (tag) {

  case 136:
   if (len != 9)
    goto len_err;
   io = *(short *)&p[4];
   size = *(short *)&p[10];
   pnpbios_parse_allocated_memresource(dev, io, size);
   break;

  case 138:

   break;

  case 134:

   break;

  case 135:
   if (len != 17)
    goto len_err;
   io = *(int *)&p[4];
   size = *(int *)&p[16];
   pnpbios_parse_allocated_memresource(dev, io, size);
   break;

  case 137:
   if (len != 9)
    goto len_err;
   io = *(int *)&p[4];
   size = *(int *)&p[8];
   pnpbios_parse_allocated_memresource(dev, io, size);
   break;

  case 130:
   if (len < 2 || len > 3)
    goto len_err;
   flags = 0;
   io = -1;
   mask = p[1] + p[2] * 256;
   for (i = 0; i < 16; i++, mask = mask >> 1)
    if (mask & 0x01)
     io = i;
   if (io != -1)
    pcibios_penalize_isa_irq(io, 1);
   else
    flags = IORESOURCE_DISABLED;
   pnp_add_irq_resource(dev, io, flags);
   break;

  case 133:
   if (len != 2)
    goto len_err;
   flags = 0;
   io = -1;
   mask = p[1];
   for (i = 0; i < 8; i++, mask = mask >> 1)
    if (mask & 0x01)
     io = i;
   if (io == -1)
    flags = IORESOURCE_DISABLED;
   pnp_add_dma_resource(dev, io, flags);
   break;

  case 129:
   if (len != 7)
    goto len_err;
   io = p[2] + p[3] * 256;
   size = p[7];
   pnpbios_parse_allocated_ioresource(dev, io, size);
   break;

  case 128:

   break;

  case 131:
   if (len != 3)
    goto len_err;
   io = p[1] + p[2] * 256;
   size = p[3];
   pnpbios_parse_allocated_ioresource(dev, io, size);
   break;

  case 132:
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
