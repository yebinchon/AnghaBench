
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int itr; } ;
struct ixgbe_q_vector {int itr; TYPE_1__ tx; TYPE_1__ rx; } ;


 int IXGBE_100K_ITR ;
 int IXGBE_20K_ITR ;
 int IXGBE_8K_ITR ;

 int ixgbe_update_itr (struct ixgbe_q_vector*,TYPE_1__*) ;
 int ixgbe_write_eitr (struct ixgbe_q_vector*) ;


 int max (int ,int ) ;

__attribute__((used)) static void ixgbe_set_itr(struct ixgbe_q_vector *q_vector)
{
 u32 new_itr = q_vector->itr;
 u8 current_itr;

 ixgbe_update_itr(q_vector, &q_vector->tx);
 ixgbe_update_itr(q_vector, &q_vector->rx);

 current_itr = max(q_vector->rx.itr, q_vector->tx.itr);

 switch (current_itr) {

 case 128:
  new_itr = IXGBE_100K_ITR;
  break;
 case 129:
  new_itr = IXGBE_20K_ITR;
  break;
 case 130:
  new_itr = IXGBE_8K_ITR;
  break;
 default:
  break;
 }

 if (new_itr != q_vector->itr) {

  new_itr = (10 * new_itr * q_vector->itr) /
     ((9 * new_itr) + q_vector->itr);


  q_vector->itr = new_itr;

  ixgbe_write_eitr(q_vector);
 }
}
