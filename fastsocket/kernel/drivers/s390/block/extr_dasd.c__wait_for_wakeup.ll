; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c__wait_for_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c__wait_for_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DASD_SLEEPON_END_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @_wait_for_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wait_for_wakeup(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 1
  %7 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %7, %struct.dasd_device** %3, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_ccwdev_lock(i32 %10)
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DASD_SLEEPON_END_TAG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_ccwdev_lock(i32 %21)
  %23 = call i32 @spin_unlock_irq(i32 %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
