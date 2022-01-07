
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int always_match ;
 struct device* bus_find_device (int *,struct device*,int *,int ) ;
 int put_device (struct device*) ;
 int scsi_bus_type ;

__attribute__((used)) static inline struct device *next_scsi_device(struct device *start)
{
 struct device *next = bus_find_device(&scsi_bus_type, start, ((void*)0),
           always_match);
 put_device(start);
 return next;
}
