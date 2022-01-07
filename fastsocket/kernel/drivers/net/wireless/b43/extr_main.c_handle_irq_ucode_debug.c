
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int opensource; } ;
struct b43_wldev {int wl; TYPE_1__ fw; } ;
typedef int __le16 ;


 int B43_DEBUG ;
 int B43_DEBUGIRQ_ACK ;




 unsigned int B43_DEBUGIRQ_REASON_REG ;
 unsigned int B43_MARKER_ID_REG ;
 unsigned int B43_MARKER_LINE_REG ;
 int B43_SHM_SCRATCH ;
 int B43_SHM_SHARED ;
 int DUMP_PREFIX_OFFSET ;
 int GFP_ATOMIC ;
 char* KERN_INFO ;
 int b43_handle_firmware_panic (struct b43_wldev*) ;
 int b43_shm_read16 (struct b43_wldev*,int ,unsigned int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,unsigned int,int ) ;
 int b43dbg (int ,char*,...) ;
 int b43info (int ,char*,...) ;
 int cpu_to_le16 (int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int print_hex_dump (char*,char*,int ,int,int,int *,int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static void handle_irq_ucode_debug(struct b43_wldev *dev)
{
 unsigned int i, cnt;
 u16 reason, marker_id, marker_line;
 __le16 *buf;


 if (!dev->fw.opensource)
  return;


 reason = b43_shm_read16(dev, B43_SHM_SCRATCH, B43_DEBUGIRQ_REASON_REG);

 switch (reason) {
 case 128:
  b43_handle_firmware_panic(dev);
  break;
 case 130:
  if (!B43_DEBUG)
   break;
  buf = kmalloc(4096, GFP_ATOMIC);
  if (!buf) {
   b43dbg(dev->wl, "SHM-dump: Failed to allocate memory\n");
   goto out;
  }
  for (i = 0; i < 4096; i += 2) {
   u16 tmp = b43_shm_read16(dev, B43_SHM_SHARED, i);
   buf[i / 2] = cpu_to_le16(tmp);
  }
  b43info(dev->wl, "Shared memory dump:\n");
  print_hex_dump(KERN_INFO, "", DUMP_PREFIX_OFFSET,
          16, 2, buf, 4096, 1);
  kfree(buf);
  break;
 case 131:
  if (!B43_DEBUG)
   break;
  b43info(dev->wl, "Microcode register dump:\n");
  for (i = 0, cnt = 0; i < 64; i++) {
   u16 tmp = b43_shm_read16(dev, B43_SHM_SCRATCH, i);
   if (cnt == 0)
    printk(KERN_INFO);
   printk("r%02u: 0x%04X  ", i, tmp);
   cnt++;
   if (cnt == 6) {
    printk("\n");
    cnt = 0;
   }
  }
  printk("\n");
  break;
 case 129:
  if (!B43_DEBUG)
   break;
  marker_id = b43_shm_read16(dev, B43_SHM_SCRATCH,
        B43_MARKER_ID_REG);
  marker_line = b43_shm_read16(dev, B43_SHM_SCRATCH,
          B43_MARKER_LINE_REG);
  b43info(dev->wl, "The firmware just executed the MARKER(%u) "
   "at line number %u\n",
   marker_id, marker_line);
  break;
 default:
  b43dbg(dev->wl, "Debug-IRQ triggered for unknown reason: %u\n",
         reason);
 }
out:

 b43_shm_write16(dev, B43_SHM_SCRATCH,
   B43_DEBUGIRQ_REASON_REG, B43_DEBUGIRQ_ACK);
}
