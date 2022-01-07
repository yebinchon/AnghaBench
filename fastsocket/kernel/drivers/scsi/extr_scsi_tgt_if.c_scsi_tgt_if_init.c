
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_register (int *) ;
 int rx_ring ;
 int tgt_miscdev ;
 int tgt_ring_exit (int *) ;
 int tgt_ring_init (int *) ;
 int tx_ring ;

int scsi_tgt_if_init(void)
{
 int err;

 err = tgt_ring_init(&tx_ring);
 if (err)
  return err;

 err = tgt_ring_init(&rx_ring);
 if (err)
  goto free_tx_ring;

 err = misc_register(&tgt_miscdev);
 if (err)
  goto free_rx_ring;

 return 0;
free_rx_ring:
 tgt_ring_exit(&rx_ring);
free_tx_ring:
 tgt_ring_exit(&tx_ring);

 return err;
}
