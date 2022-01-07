
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_struct {int dummy; } ;


 int mite_setup2 (struct mite_struct*,int ) ;

int mite_setup(struct mite_struct *mite)
{
 return mite_setup2(mite, 0);
}
