
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_bus {int sdio_sbaddr; } ;


 int SBSDIO_FUNC1_SBADDRHIGH ;
 int SBSDIO_FUNC1_SBADDRLOW ;
 int SBSDIO_FUNC1_SBADDRMID ;
 int SBSDIO_SBADDRHIGH_MASK ;
 int SBSDIO_SBADDRLOW_MASK ;
 int SBSDIO_SBADDRMID_MASK ;
 int dev_dbg (int ,char*,int,int) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 int ssb_sdio_writeb (struct ssb_bus*,int ,int) ;

__attribute__((used)) static int ssb_sdio_set_sbaddr_window(struct ssb_bus *bus, u32 address)
{
 int error;

 error = ssb_sdio_writeb(bus, SBSDIO_FUNC1_SBADDRLOW,
    (address >> 8) & SBSDIO_SBADDRLOW_MASK);
 if (error)
  goto out;
 error = ssb_sdio_writeb(bus, SBSDIO_FUNC1_SBADDRMID,
    (address >> 16) & SBSDIO_SBADDRMID_MASK);
 if (error)
  goto out;
 error = ssb_sdio_writeb(bus, SBSDIO_FUNC1_SBADDRHIGH,
    (address >> 24) & SBSDIO_SBADDRHIGH_MASK);
 if (error)
  goto out;
 bus->sdio_sbaddr = address;
out:
 if (error) {
  dev_dbg(ssb_sdio_dev(bus), "failed to set address window"
   " to 0x%08x, error %d\n", address, error);
 }

 return error;
}
