
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_BIO_SRC_IRQ ;
 int kunmap_atomic (void*,int ) ;

void scsi_kunmap_atomic_sg(void *virt)
{
 kunmap_atomic(virt, KM_BIO_SRC_IRQ);
}
