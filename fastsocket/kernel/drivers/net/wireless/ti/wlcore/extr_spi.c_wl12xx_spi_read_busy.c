
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int t ;
struct wl12xx_spi_glue {int dev; } ;
struct wl1271 {int* buffer_busyword; } ;
struct spi_transfer {int* rx_buf; int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct device {struct device* parent; } ;


 int ETIMEDOUT ;
 int WL1271_BUSY_WORD_TIMEOUT ;
 int dev_err (struct device*,char*) ;
 void* dev_get_drvdata (struct device*) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int to_spi_device (int ) ;

__attribute__((used)) static int wl12xx_spi_read_busy(struct device *child)
{
 struct wl12xx_spi_glue *glue = dev_get_drvdata(child->parent);
 struct wl1271 *wl = dev_get_drvdata(child);
 struct spi_transfer t[1];
 struct spi_message m;
 u32 *busy_buf;
 int num_busy_bytes = 0;






 num_busy_bytes = WL1271_BUSY_WORD_TIMEOUT;
 busy_buf = wl->buffer_busyword;
 while (num_busy_bytes) {
  num_busy_bytes--;
  spi_message_init(&m);
  memset(t, 0, sizeof(t));
  t[0].rx_buf = busy_buf;
  t[0].len = sizeof(u32);
  t[0].cs_change = 1;
  spi_message_add_tail(&t[0], &m);
  spi_sync(to_spi_device(glue->dev), &m);

  if (*busy_buf & 0x1)
   return 0;
 }


 dev_err(child->parent, "SPI read busy-word timeout!\n");
 return -ETIMEDOUT;
}
