
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nic {int flags; scalar_t__ mac; struct firmware const* fw; int netdev; TYPE_1__* pdev; } ;
typedef struct firmware {int size; int* data; } const firmware ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 struct firmware const* ERR_PTR (int) ;
 char* FIRMWARE_D101M ;
 char* FIRMWARE_D101S ;
 char* FIRMWARE_D102E ;
 int UCODE_SIZE ;
 int ich ;
 scalar_t__ mac_82551_10 ;
 scalar_t__ mac_82551_F ;
 scalar_t__ mac_82559_D101M ;
 scalar_t__ mac_82559_D101S ;
 int netif_err (struct nic*,int ,int ,char*,char const*,int,...) ;
 int probe ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static const struct firmware *e100_request_firmware(struct nic *nic)
{
 const char *fw_name;
 const struct firmware *fw = nic->fw;
 u8 timer, bundle, min_size;
 int err = 0;


 if (nic->flags & ich)
  return ((void*)0);


 if (nic->mac == mac_82559_D101M)
  fw_name = FIRMWARE_D101M;
 else if (nic->mac == mac_82559_D101S)
  fw_name = FIRMWARE_D101S;
 else if (nic->mac == mac_82551_F || nic->mac == mac_82551_10)
  fw_name = FIRMWARE_D102E;
 else
  return ((void*)0);






 if (!fw)
  err = request_firmware(&fw, fw_name, &nic->pdev->dev);

 if (err) {
  netif_err(nic, probe, nic->netdev,
     "Failed to load firmware \"%s\": %d\n",
     fw_name, err);
  return ERR_PTR(err);
 }



 if (fw->size != UCODE_SIZE * 4 + 3) {
  netif_err(nic, probe, nic->netdev,
     "Firmware \"%s\" has wrong size %zu\n",
     fw_name, fw->size);
  release_firmware(fw);
  return ERR_PTR(-EINVAL);
 }


 timer = fw->data[UCODE_SIZE * 4];
 bundle = fw->data[UCODE_SIZE * 4 + 1];
 min_size = fw->data[UCODE_SIZE * 4 + 2];

 if (timer >= UCODE_SIZE || bundle >= UCODE_SIZE ||
     min_size >= UCODE_SIZE) {
  netif_err(nic, probe, nic->netdev,
     "\"%s\" has bogus offset values (0x%x,0x%x,0x%x)\n",
     fw_name, timer, bundle, min_size);
  release_firmware(fw);
  return ERR_PTR(-EINVAL);
 }



 nic->fw = fw;
 return fw;
}
