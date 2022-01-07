
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; struct spi_transfer* tx_buf; } ;
typedef struct spi_transfer u8 ;
typedef int t ;
struct wl12xx_spi_glue {int dev; } ;
struct spi_message {int dummy; } ;
struct device {int parent; } ;


 int GFP_KERNEL ;
 int WSPI_INIT_CMD_LEN ;
 int dev_err (int ,char*) ;
 struct wl12xx_spi_glue* dev_get_drvdata (int ) ;
 int kfree (struct spi_transfer*) ;
 struct spi_transfer* kzalloc (int,int ) ;
 int memset (struct spi_transfer*,int,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int to_spi_device (int ) ;

__attribute__((used)) static void wl12xx_spi_reset(struct device *child)
{
 struct wl12xx_spi_glue *glue = dev_get_drvdata(child->parent);
 u8 *cmd;
 struct spi_transfer t;
 struct spi_message m;

 cmd = kzalloc(WSPI_INIT_CMD_LEN, GFP_KERNEL);
 if (!cmd) {
  dev_err(child->parent,
   "could not allocate cmd for spi reset\n");
  return;
 }

 memset(&t, 0, sizeof(t));
 spi_message_init(&m);

 memset(cmd, 0xff, WSPI_INIT_CMD_LEN);

 t.tx_buf = cmd;
 t.len = WSPI_INIT_CMD_LEN;
 spi_message_add_tail(&t, &m);

 spi_sync(to_spi_device(glue->dev), &m);

 kfree(cmd);
}
