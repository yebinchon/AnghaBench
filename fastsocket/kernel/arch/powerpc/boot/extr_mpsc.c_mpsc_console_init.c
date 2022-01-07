
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u32 ;
struct serial_console_data {int * close; int tstc; int getc; int putc; int open; } ;


 int MPSC_INTR_CAUSE ;
 int MPSC_INTR_MASK ;
 int getprop (void*,char*,void**,int) ;
 void* mpsc_base ;
 void* mpsc_get_virtreg_of_phandle (void*,char*) ;
 int mpsc_getc ;
 int mpsc_open ;
 int mpsc_putc ;
 int mpsc_stop_dma (char volatile*) ;
 int mpsc_tstc ;
 int * mpscintr_base ;
 int out_le32 (int *,int ) ;

int mpsc_console_init(void *devp, struct serial_console_data *scdp)
{
 void *v;
 int n, reg_set;
 volatile char *sdma_base;

 n = getprop(devp, "virtual-reg", &v, sizeof(v));
 if (n != sizeof(v))
  goto err_out;
 mpsc_base = v;

 sdma_base = mpsc_get_virtreg_of_phandle(devp, "sdma");
 if (sdma_base == ((void*)0))
  goto err_out;

 mpscintr_base = mpsc_get_virtreg_of_phandle(devp, "mpscintr");
 if (mpscintr_base == ((void*)0))
  goto err_out;

 n = getprop(devp, "cell-index", &v, sizeof(v));
 if (n != sizeof(v))
  goto err_out;
 reg_set = (int)v;

 mpscintr_base += (reg_set == 0) ? 0x4 : 0xc;


 out_le32((u32 *)(mpscintr_base + MPSC_INTR_CAUSE), 0);
 out_le32((u32 *)(mpscintr_base + MPSC_INTR_CAUSE), 0);
 out_le32((u32 *)(mpscintr_base + MPSC_INTR_MASK), 0);
 out_le32((u32 *)(mpscintr_base + MPSC_INTR_MASK), 0);

 mpsc_stop_dma(sdma_base);

 scdp->open = mpsc_open;
 scdp->putc = mpsc_putc;
 scdp->getc = mpsc_getc;
 scdp->tstc = mpsc_tstc;
 scdp->close = ((void*)0);

 return 0;

err_out:
 return -1;
}
