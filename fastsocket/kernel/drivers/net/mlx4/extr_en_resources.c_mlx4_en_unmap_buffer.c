
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct mlx4_buf {int nbufs; TYPE_1__ direct; } ;


 int BITS_PER_LONG ;
 int vunmap (int ) ;

void mlx4_en_unmap_buffer(struct mlx4_buf *buf)
{
 if (BITS_PER_LONG == 64 || buf->nbufs == 1)
  return;

 vunmap(buf->direct.buf);
}
