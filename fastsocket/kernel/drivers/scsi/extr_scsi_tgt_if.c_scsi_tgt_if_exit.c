
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int rx_ring ;
 int tgt_miscdev ;
 int tgt_ring_exit (int *) ;
 int tx_ring ;

void scsi_tgt_if_exit(void)
{
 tgt_ring_exit(&tx_ring);
 tgt_ring_exit(&rx_ring);
 misc_deregister(&tgt_miscdev);
}
