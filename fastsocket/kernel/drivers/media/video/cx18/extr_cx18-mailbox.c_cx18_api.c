
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int dummy; } ;


 int cx18_api_call (struct cx18*,int ,int,int *) ;

int cx18_api(struct cx18 *cx, u32 cmd, int args, u32 data[])
{
 return cx18_api_call(cx, cmd, args, data);
}
