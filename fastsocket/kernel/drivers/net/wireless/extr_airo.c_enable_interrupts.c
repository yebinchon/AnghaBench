
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;


 int EVINTEN ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 int STATUS_INTS ;

__attribute__((used)) static void enable_interrupts( struct airo_info *ai ) {

 OUT4500( ai, EVINTEN, STATUS_INTS );
}
