
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct vxge_hw_fifo_txd {scalar_t__ host_control; } ;
struct __vxge_hw_fifo_txdl_priv {int dummy; } ;
struct __vxge_hw_fifo {int per_txdl_space; } ;



__attribute__((used)) static inline struct __vxge_hw_fifo_txdl_priv *
__vxge_hw_fifo_txdl_priv(
 struct __vxge_hw_fifo *fifo,
 struct vxge_hw_fifo_txd *txdp)
{
 return (struct __vxge_hw_fifo_txdl_priv *)
   (((char *)((ulong)txdp->host_control)) +
    fifo->per_txdl_space);
}
