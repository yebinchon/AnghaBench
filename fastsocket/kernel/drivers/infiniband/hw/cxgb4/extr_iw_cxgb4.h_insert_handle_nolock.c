
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;
struct c4iw_dev {int dummy; } ;


 int _insert_handle (struct c4iw_dev*,struct idr*,void*,int ,int ) ;

__attribute__((used)) static inline int insert_handle_nolock(struct c4iw_dev *rhp, struct idr *idr,
           void *handle, u32 id)
{
 return _insert_handle(rhp, idr, handle, id, 0);
}
