
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct airo_info {int * fids; int flags; } ;


 int AIRO_DEF_MTU ;
 int FLAG_FLASHING ;
 int FLAG_MPI ;
 int MAX_FIDS ;
 int SUCCESS ;
 int clear_bit (int ,int *) ;
 int mpi_init_descriptors (struct airo_info*) ;
 int setup_card (struct airo_info*,int ,int) ;
 int ssleep (int) ;
 scalar_t__ test_bit (int ,int *) ;
 int transmit_allocate (struct airo_info*,int ,int) ;

__attribute__((used)) static int flashrestart(struct airo_info *ai,struct net_device *dev){
 int i,status;

 ssleep(1);
 clear_bit (FLAG_FLASHING, &ai->flags);
 if (test_bit(FLAG_MPI, &ai->flags)) {
  status = mpi_init_descriptors(ai);
  if (status != SUCCESS)
   return status;
 }
 status = setup_card(ai, dev->dev_addr, 1);

 if (!test_bit(FLAG_MPI,&ai->flags))
  for( i = 0; i < MAX_FIDS; i++ ) {
   ai->fids[i] = transmit_allocate
    ( ai, AIRO_DEF_MTU, i >= MAX_FIDS / 2 );
  }

 ssleep(1);
 return status;
}
