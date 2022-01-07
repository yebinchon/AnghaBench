
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_chunk {int dummy; } ;
struct c2_dev {int dummy; } ;
typedef int gfp_t ;


 int c2_alloc_mqsp_chunk (struct c2_dev*,int ,struct sp_chunk**) ;

int c2_init_mqsp_pool(struct c2_dev *c2dev, gfp_t gfp_mask,
        struct sp_chunk **root)
{
 return c2_alloc_mqsp_chunk(c2dev, gfp_mask, root);
}
