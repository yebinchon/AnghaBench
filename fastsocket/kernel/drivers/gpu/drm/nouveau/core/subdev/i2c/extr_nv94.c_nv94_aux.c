
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nv50_i2c_port {int addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {int dummy; } ;


 int AUX_DBG (char*,...) ;
 int AUX_ERR (char*,int) ;
 int ENXIO ;
 int EREMOTEIO ;
 int auxch_fini (struct nouveau_i2c*,int) ;
 int auxch_init (struct nouveau_i2c*,int) ;
 int memcpy (int*,int*,int) ;
 struct nouveau_i2c* nouveau_i2c (struct nouveau_i2c_port*) ;
 int nv_mask (struct nouveau_i2c*,int,int ,int ) ;
 int nv_rd32 (struct nouveau_i2c*,int) ;
 int nv_wr32 (struct nouveau_i2c*,int,int) ;
 int udelay (int) ;

int
nv94_aux(struct nouveau_i2c_port *base, u8 type, u32 addr, u8 *data, u8 size)
{
 struct nouveau_i2c *aux = nouveau_i2c(base);
 struct nv50_i2c_port *port = (void *)base;
 u32 ctrl, stat, timeout, retries;
 u32 xbuf[4] = {};
 int ch = port->addr;
 int ret, i;

 AUX_DBG("%d: 0x%08x %d\n", type, addr, size);

 ret = auxch_init(aux, ch);
 if (ret)
  goto out;

 stat = nv_rd32(aux, 0x00e4e8 + (ch * 0x50));
 if (!(stat & 0x10000000)) {
  AUX_DBG("sink not detected\n");
  ret = -ENXIO;
  goto out;
 }

 if (!(type & 1)) {
  memcpy(xbuf, data, size);
  for (i = 0; i < 16; i += 4) {
   AUX_DBG("wr 0x%08x\n", xbuf[i / 4]);
   nv_wr32(aux, 0x00e4c0 + (ch * 0x50) + i, xbuf[i / 4]);
  }
 }

 ctrl = nv_rd32(aux, 0x00e4e4 + (ch * 0x50));
 ctrl &= ~0x0001f0ff;
 ctrl |= type << 12;
 ctrl |= size - 1;
 nv_wr32(aux, 0x00e4e0 + (ch * 0x50), addr);


 ret = -EREMOTEIO;
 for (retries = 0; retries < 32; retries++) {

  nv_wr32(aux, 0x00e4e4 + (ch * 0x50), 0x80000000 | ctrl);
  nv_wr32(aux, 0x00e4e4 + (ch * 0x50), 0x00000000 | ctrl);
  if (retries)
   udelay(400);


  nv_wr32(aux, 0x00e4e4 + (ch * 0x50), 0x00010000 | ctrl);

  timeout = 1000;
  do {
   ctrl = nv_rd32(aux, 0x00e4e4 + (ch * 0x50));
   udelay(1);
   if (!timeout--) {
    AUX_ERR("tx req timeout 0x%08x\n", ctrl);
    goto out;
   }
  } while (ctrl & 0x00010000);


  stat = nv_mask(aux, 0x00e4e8 + (ch * 0x50), 0, 0);
  if (!(stat & 0x000f0f00)) {
   ret = 0;
   break;
  }

  AUX_DBG("%02d 0x%08x 0x%08x\n", retries, ctrl, stat);
 }

 if (type & 1) {
  for (i = 0; i < 16; i += 4) {
   xbuf[i / 4] = nv_rd32(aux, 0x00e4d0 + (ch * 0x50) + i);
   AUX_DBG("rd 0x%08x\n", xbuf[i / 4]);
  }
  memcpy(data, xbuf, size);
 }

out:
 auxch_fini(aux, ch);
 return ret;
}
