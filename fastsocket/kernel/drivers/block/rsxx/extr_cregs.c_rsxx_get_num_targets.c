
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dummy; } ;


 int CREG_ADD_NUM_TARGETS ;
 int rsxx_creg_read (struct rsxx_cardinfo*,int ,int,unsigned int*,int ) ;

int rsxx_get_num_targets(struct rsxx_cardinfo *card,
        unsigned int *n_targets)
{
 return rsxx_creg_read(card, CREG_ADD_NUM_TARGETS,
      sizeof(*n_targets), n_targets, 0);
}
