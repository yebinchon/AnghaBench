
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef char u32 ;
struct prpmc2800_board_info {char mem_size; scalar_t__ model; char variant; char core_speed; scalar_t__ bridge_type; char user_flash; } ;


 int BOARD_MODEL ;
 int BOARD_MODEL_MAX ;
 scalar_t__ BOARD_MODEL_PRPMC280 ;
 scalar_t__ BRIDGE_TYPE_MV64362 ;
 int bridge_base ;
 int fatal (char*) ;
 void* find_node_by_compatible (int *,char*) ;
 void* find_node_by_prop_value_str (int *,char*,char*) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,char*,int) ;
 int memset (char*,int ,int) ;
 char mv64x60_get_mem_size (int ) ;
 int prpmc2800_bridge_setup (char) ;
 struct prpmc2800_board_info* prpmc2800_get_bip () ;
 int setprop (void*,char*,char*,int) ;
 char strlen (char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void prpmc2800_fixups(void)
{
 u32 v[2], l, mem_size;
 int rc;
 void *devp;
 char model[BOARD_MODEL_MAX];
 struct prpmc2800_board_info *bip;

 bip = prpmc2800_get_bip();

 mem_size = (bip) ? bip->mem_size : mv64x60_get_mem_size(bridge_base);
 prpmc2800_bridge_setup(mem_size);




 if (!bip)
  return;



 devp = finddevice("/");
 if (devp == ((void*)0))
  fatal("Error: Missing '/' device tree node\n\r");
 memset(model, 0, BOARD_MODEL_MAX);
 strncpy(model, BOARD_MODEL, BOARD_MODEL_MAX - 2);
 l = strlen(model);
 if (bip->model == BOARD_MODEL_PRPMC280)
  l--;
 model[l++] = bip->variant;
 model[l++] = '\0';
 setprop(devp, "model", model, l);


 devp = find_node_by_prop_value_str(((void*)0), "device_type", "cpu");
 if (devp == ((void*)0))
  fatal("Error: Missing proper cpu device tree node\n\r");
 v[0] = bip->core_speed;
 setprop(devp, "clock-frequency", &v[0], sizeof(v[0]));


 devp = finddevice("/memory");
 if (devp == ((void*)0))
  fatal("Error: Missing /memory device tree node\n\r");
 v[0] = 0;
 v[1] = bip->mem_size;
 setprop(devp, "reg", v, sizeof(v));


 if (bip->bridge_type == BRIDGE_TYPE_MV64362) {
  devp = find_node_by_compatible(((void*)0), "marvell,mv64360");
  if (devp == ((void*)0))
   fatal("Error: Missing marvell,mv64360"
     " device tree node\n\r");
  setprop(devp, "model", "mv64362", strlen("mv64362") + 1);
 }


 devp = find_node_by_compatible(((void*)0), "direct-mapped");
 if (devp == ((void*)0))
  fatal("Error: Missing User FLASH device tree node\n\r");
 rc = getprop(devp, "reg", v, sizeof(v));
 if (rc != sizeof(v))
  fatal("Error: Can't find User FLASH reg property\n\r");
 v[1] = bip->user_flash;
 setprop(devp, "reg", v, sizeof(v));
}
