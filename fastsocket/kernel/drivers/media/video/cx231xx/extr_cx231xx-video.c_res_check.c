
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx_fh {int stream_on; } ;



__attribute__((used)) static int res_check(struct cx231xx_fh *fh)
{
 return fh->stream_on;
}
