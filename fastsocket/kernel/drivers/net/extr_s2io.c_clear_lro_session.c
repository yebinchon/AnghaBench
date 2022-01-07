
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lro {int dummy; } ;


 int memset (struct lro*,int ,int) ;

__attribute__((used)) static void clear_lro_session(struct lro *lro)
{
 static u16 lro_struct_size = sizeof(struct lro);

 memset(lro, 0, lro_struct_size);
}
