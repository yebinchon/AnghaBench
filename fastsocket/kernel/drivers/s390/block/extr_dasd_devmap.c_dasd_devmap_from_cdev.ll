; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_devmap_from_cdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_devmap_from_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_devmap = type { i32 }
%struct.ccw_device = type { i32 }

@DASD_FEATURE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_devmap* (%struct.ccw_device*)* @dasd_devmap_from_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_devmap* @dasd_devmap_from_cdev(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.dasd_devmap*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = call i32 @dev_name(i32* %5)
  %7 = call %struct.dasd_devmap* @dasd_find_busid(i32 %6)
  store %struct.dasd_devmap* %7, %struct.dasd_devmap** %3, align 8
  %8 = load %struct.dasd_devmap*, %struct.dasd_devmap** %3, align 8
  %9 = call i64 @IS_ERR(%struct.dasd_devmap* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = call i32 @dev_name(i32* %13)
  %15 = load i32, i32* @DASD_FEATURE_DEFAULT, align 4
  %16 = call %struct.dasd_devmap* @dasd_add_busid(i32 %14, i32 %15)
  store %struct.dasd_devmap* %16, %struct.dasd_devmap** %3, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.dasd_devmap*, %struct.dasd_devmap** %3, align 8
  ret %struct.dasd_devmap* %18
}

declare dso_local %struct.dasd_devmap* @dasd_find_busid(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #1

declare dso_local %struct.dasd_devmap* @dasd_add_busid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
