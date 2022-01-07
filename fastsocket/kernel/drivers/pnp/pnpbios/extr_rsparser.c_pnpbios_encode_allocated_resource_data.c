
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;


 int IORESOURCE_DMA ;
 int IORESOURCE_IO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 unsigned char LARGE_TAG ;
 int dev_err (int *,char*,...) ;
 int pnp_get_resource (struct pnp_dev*,int ,int) ;
 int pnpbios_encode_dma (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_fixed_mem32 (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_fixed_port (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_irq (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_mem (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_mem32 (struct pnp_dev*,unsigned char*,int ) ;
 int pnpbios_encode_port (struct pnp_dev*,unsigned char*,int ) ;

__attribute__((used)) static unsigned char *pnpbios_encode_allocated_resource_data(struct pnp_dev
        *dev,
            unsigned char *p,
            unsigned char *end)
{
 unsigned int len, tag;
 int port = 0, irq = 0, dma = 0, mem = 0;

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

  case 135:
   if (len != 9)
    goto len_err;
   pnpbios_encode_mem(dev, p,
    pnp_get_resource(dev, IORESOURCE_MEM, mem));
   mem++;
   break;

  case 134:
   if (len != 17)
    goto len_err;
   pnpbios_encode_mem32(dev, p,
    pnp_get_resource(dev, IORESOURCE_MEM, mem));
   mem++;
   break;

  case 136:
   if (len != 9)
    goto len_err;
   pnpbios_encode_fixed_mem32(dev, p,
    pnp_get_resource(dev, IORESOURCE_MEM, mem));
   mem++;
   break;

  case 130:
   if (len < 2 || len > 3)
    goto len_err;
   pnpbios_encode_irq(dev, p,
    pnp_get_resource(dev, IORESOURCE_IRQ, irq));
   irq++;
   break;

  case 133:
   if (len != 2)
    goto len_err;
   pnpbios_encode_dma(dev, p,
    pnp_get_resource(dev, IORESOURCE_DMA, dma));
   dma++;
   break;

  case 129:
   if (len != 7)
    goto len_err;
   pnpbios_encode_port(dev, p,
    pnp_get_resource(dev, IORESOURCE_IO, port));
   port++;
   break;

  case 128:

   break;

  case 131:
   if (len != 3)
    goto len_err;
   pnpbios_encode_fixed_port(dev, p,
    pnp_get_resource(dev, IORESOURCE_IO, port));
   port++;
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
