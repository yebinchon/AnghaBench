
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int pci; int aal0buf; } ;


 int DPRINTK (char*) ;
 int lanai_buf_deallocate (int *,int ) ;

__attribute__((used)) static inline void aal0_buffer_free(struct lanai_dev *lanai)
{
 DPRINTK("aal0_buffer_allocate: freeing AAL0 RX buffer\n");
 lanai_buf_deallocate(&lanai->aal0buf, lanai->pci);
}
