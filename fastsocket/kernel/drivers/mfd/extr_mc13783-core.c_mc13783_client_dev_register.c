
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfd_cell {char const* name; } ;
struct mc13783 {int dev; } ;


 int mfd_add_devices (int ,int,struct mfd_cell*,int,int *,int ) ;

__attribute__((used)) static void mc13783_client_dev_register(struct mc13783 *mc13783,
           const char *name)
{
 struct mfd_cell cell = {};

 cell.name = name;

 mfd_add_devices(mc13783->dev, -1, &cell, 1, ((void*)0), 0);
}
