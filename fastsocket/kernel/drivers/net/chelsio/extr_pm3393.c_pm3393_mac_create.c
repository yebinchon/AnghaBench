
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {TYPE_1__* instance; int * adapter; int * ops; } ;
struct TYPE_2__ {int fc; } ;
typedef TYPE_1__ cmac_instance ;
typedef int adapter_t ;


 int GFP_KERNEL ;
 int OFFSET (int) ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 struct cmac* kzalloc (int,int ) ;
 int pm3393_ops ;
 int t1_tpi_write (int *,int ,int) ;

__attribute__((used)) static struct cmac *pm3393_mac_create(adapter_t *adapter, int index)
{
 struct cmac *cmac;

 cmac = kzalloc(sizeof(*cmac) + sizeof(cmac_instance), GFP_KERNEL);
 if (!cmac)
  return ((void*)0);

 cmac->ops = &pm3393_ops;
 cmac->instance = (cmac_instance *) (cmac + 1);
 cmac->adapter = adapter;
 cmac->instance->fc = PAUSE_TX | PAUSE_RX;

 t1_tpi_write(adapter, OFFSET(0x0001), 0x00008000);
 t1_tpi_write(adapter, OFFSET(0x0001), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x2308), 0x00009800);
 t1_tpi_write(adapter, OFFSET(0x2305), 0x00001001);
 t1_tpi_write(adapter, OFFSET(0x2320), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2321), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2322), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2323), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2324), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2325), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2326), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2327), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2328), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x2329), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232a), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232b), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232c), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232d), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232e), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x232f), 0x00008800);
 t1_tpi_write(adapter, OFFSET(0x230d), 0x00009c00);
 t1_tpi_write(adapter, OFFSET(0x2304), 0x00000202);

 t1_tpi_write(adapter, OFFSET(0x3200), 0x00008080);
 t1_tpi_write(adapter, OFFSET(0x3210), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x3203), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x3204), 0x00000040);
 t1_tpi_write(adapter, OFFSET(0x3205), 0x000002cc);
 t1_tpi_write(adapter, OFFSET(0x3206), 0x00000199);
 t1_tpi_write(adapter, OFFSET(0x3207), 0x00000240);
 t1_tpi_write(adapter, OFFSET(0x3202), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x3210), 0x00000001);
 t1_tpi_write(adapter, OFFSET(0x3208), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x320a), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x320c), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x320e), 0x0000ffff);

 t1_tpi_write(adapter, OFFSET(0x2200), 0x0000c000);
 t1_tpi_write(adapter, OFFSET(0x2201), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x220e), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x220f), 0x00000100);
 t1_tpi_write(adapter, OFFSET(0x2210), 0x00000c00);
 t1_tpi_write(adapter, OFFSET(0x2211), 0x00000599);
 t1_tpi_write(adapter, OFFSET(0x220d), 0x00000000);
 t1_tpi_write(adapter, OFFSET(0x2201), 0x00000001);
 t1_tpi_write(adapter, OFFSET(0x2203), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x2205), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x2209), 0x0000ffff);

 t1_tpi_write(adapter, OFFSET(0x2241), 0xfffffffe);
 t1_tpi_write(adapter, OFFSET(0x2242), 0x0000ffff);
 t1_tpi_write(adapter, OFFSET(0x2243), 0x00000008);
 t1_tpi_write(adapter, OFFSET(0x2244), 0x00000008);
 t1_tpi_write(adapter, OFFSET(0x2245), 0x00000008);
 t1_tpi_write(adapter, OFFSET(0x2240), 0x00000005);

 t1_tpi_write(adapter, OFFSET(0x2280), 0x00002103);
 t1_tpi_write(adapter, OFFSET(0x2284), 0x00000000);

 t1_tpi_write(adapter, OFFSET(0x3280), 0x00000087);
 t1_tpi_write(adapter, OFFSET(0x3282), 0x0000001f);

 t1_tpi_write(adapter, OFFSET(0x3040), 0x0c32);

 t1_tpi_write(adapter, OFFSET(0x304d), 0x8000);
 t1_tpi_write(adapter, OFFSET(0x2040), 0x059c);
 t1_tpi_write(adapter, OFFSET(0x2049), 0x0001);
 t1_tpi_write(adapter, OFFSET(0x2070), 0x0000);



 t1_tpi_write(adapter, OFFSET(0x206e), 0x0000);
 t1_tpi_write(adapter, OFFSET(0x204a), 0xffff);
 t1_tpi_write(adapter, OFFSET(0x204b), 0xffff);
 t1_tpi_write(adapter, OFFSET(0x204c), 0xffff);
 t1_tpi_write(adapter, OFFSET(0x206e), 0x0009);

 t1_tpi_write(adapter, OFFSET(0x0003), 0x0000);
 t1_tpi_write(adapter, OFFSET(0x0100), 0x0ff0);
 t1_tpi_write(adapter, OFFSET(0x0101), 0x0f0f);

 return cmac;
}
