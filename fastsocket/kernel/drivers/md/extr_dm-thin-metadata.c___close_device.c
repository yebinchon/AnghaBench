
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int open_count; } ;



__attribute__((used)) static void __close_device(struct dm_thin_device *td)
{
 --td->open_count;
}
