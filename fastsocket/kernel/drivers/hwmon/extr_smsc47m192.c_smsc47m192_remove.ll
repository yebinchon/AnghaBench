; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.smsc47m192_data = type { i32 }

@smsc47m192_group = common dso_local global i32 0, align 4
@smsc47m192_group_in4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @smsc47m192_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc47m192_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.smsc47m192_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.smsc47m192_data* %5, %struct.smsc47m192_data** %3, align 8
  %6 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %7 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hwmon_device_unregister(i32 %8)
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @sysfs_remove_group(i32* %12, i32* @smsc47m192_group)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_group(i32* %16, i32* @smsc47m192_group_in4)
  %18 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %19 = call i32 @kfree(%struct.smsc47m192_data* %18)
  ret i32 0
}

declare dso_local %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.smsc47m192_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
