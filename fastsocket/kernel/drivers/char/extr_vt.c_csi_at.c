
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_cols; unsigned int vc_x; } ;


 int insert_char (struct vc_data*,unsigned int) ;

__attribute__((used)) static void csi_at(struct vc_data *vc, unsigned int nr)
{
 if (nr > vc->vc_cols - vc->vc_x)
  nr = vc->vc_cols - vc->vc_x;
 else if (!nr)
  nr = 1;
 insert_char(vc, nr);
}
