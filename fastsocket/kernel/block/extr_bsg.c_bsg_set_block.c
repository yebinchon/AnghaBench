
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
struct bsg_device {int flags; } ;


 int BSG_F_BLOCK ;
 int O_NONBLOCK ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void bsg_set_block(struct bsg_device *bd, struct file *file)
{
 if (file->f_flags & O_NONBLOCK)
  clear_bit(BSG_F_BLOCK, &bd->flags);
 else
  set_bit(BSG_F_BLOCK, &bd->flags);
}
