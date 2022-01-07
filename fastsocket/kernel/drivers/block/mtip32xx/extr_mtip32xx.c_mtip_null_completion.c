
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int dummy; } ;



__attribute__((used)) static void mtip_null_completion(struct mtip_port *port,
       int tag,
       void *data,
       int status)
{
 return;
}
