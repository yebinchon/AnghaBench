
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_ah {int dev; } ;
struct ib_ah {int dummy; } ;


 struct ocrdma_ah* get_ocrdma_ah (struct ib_ah*) ;
 int kfree (struct ocrdma_ah*) ;
 int ocrdma_free_av (int ,struct ocrdma_ah*) ;

int ocrdma_destroy_ah(struct ib_ah *ibah)
{
 struct ocrdma_ah *ah = get_ocrdma_ah(ibah);
 ocrdma_free_av(ah->dev, ah);
 kfree(ah);
 return 0;
}
