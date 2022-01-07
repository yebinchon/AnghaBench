
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
struct c4iw_dev {int dummy; } ;


 int _remove_handle (struct c4iw_dev*,struct idr*,int ,int) ;

__attribute__((used)) static inline void remove_handle(struct c4iw_dev *rhp, struct idr *idr, u32 id)
{
 _remove_handle(rhp, idr, id, 1);
}
