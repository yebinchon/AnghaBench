
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCA_POS_REG (int) ;
 unsigned char inb_p (int ) ;

__attribute__((used)) static int mca_read_and_store_pos(unsigned char *pos)
{
 int j;
 int found = 0;

 for (j = 0; j < 8; j++) {
  pos[j] = inb_p(MCA_POS_REG(j));
  if (pos[j] != 0xff) {
   found = 1;
  }
 }
 return found;
}
