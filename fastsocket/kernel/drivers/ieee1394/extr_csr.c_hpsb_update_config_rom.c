
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned char generation; int lock; TYPE_3__* rom; } ;
struct hpsb_host {TYPE_4__ csr; TYPE_2__* driver; } ;
typedef int quadlet_t ;
struct TYPE_7__ {int bus_info_data; TYPE_1__* cache_head; } ;
struct TYPE_6__ {int (* set_hw_config_rom ) (struct hpsb_host*,int ) ;} ;
struct TYPE_5__ {size_t size; size_t len; int data; } ;


 int HPSB_NOTICE (char*) ;
 int memcpy (int ,int const*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hpsb_host*,int ) ;

int hpsb_update_config_rom(struct hpsb_host *host, const quadlet_t *new_rom,
 size_t buffersize, unsigned char rom_version)
{
 unsigned long flags;
 int ret;

 HPSB_NOTICE("hpsb_update_config_rom() is deprecated");

        spin_lock_irqsave(&host->csr.lock, flags);
 if (rom_version != host->csr.generation)
                ret = -1;
 else if (buffersize > host->csr.rom->cache_head->size)
  ret = -2;
        else {


  memcpy(host->csr.rom->cache_head->data, new_rom, buffersize);
  host->csr.rom->cache_head->len = buffersize;

  if (host->driver->set_hw_config_rom)
   host->driver->set_hw_config_rom(host, host->csr.rom->bus_info_data);


  host->csr.generation++;
  if (host->csr.generation > 0xf || host->csr.generation < 2)
   host->csr.generation = 2;
  ret=0;
        }
        spin_unlock_irqrestore(&host->csr.lock, flags);
        return ret;
}
