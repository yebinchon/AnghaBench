
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int options; } ;






 int ONENAND_GET_WP_STATUS (struct onenand_chip*) ;
 int ONENAND_HAS_CONT_LOCK ;
 int ONENAND_SET_WP_STATUS (int,struct onenand_chip*) ;
 int ONENAND_WP_LS ;
 int ONENAND_WP_LTS ;
 int ONENAND_WP_US ;

__attribute__((used)) static void onenand_lock_handle(struct onenand_chip *this, int cmd)
{
 int block_lock_scheme;
 int status;

 status = ONENAND_GET_WP_STATUS(this);
 block_lock_scheme = !(this->options & ONENAND_HAS_CONT_LOCK);

 switch (cmd) {
 case 129:
 case 128:
  if (block_lock_scheme)
   ONENAND_SET_WP_STATUS(ONENAND_WP_US, this);
  else
   ONENAND_SET_WP_STATUS(status | ONENAND_WP_US, this);
  break;

 case 131:
  if (block_lock_scheme)
   ONENAND_SET_WP_STATUS(ONENAND_WP_LS, this);
  else
   ONENAND_SET_WP_STATUS(status | ONENAND_WP_LS, this);
  break;

 case 130:
  if (block_lock_scheme)
   ONENAND_SET_WP_STATUS(ONENAND_WP_LTS, this);
  else
   ONENAND_SET_WP_STATUS(status | ONENAND_WP_LTS, this);
  break;

 default:
  break;
 }
}
