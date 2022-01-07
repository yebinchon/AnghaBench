; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_erp_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_erp_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64 }
%struct.dasd_device = type { %struct.ccw_device* }
%struct.ccw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dasd_3990_erp_action = common dso_local global i32 0, align 4
@dasd_default_erp_action = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @dasd_eckd_erp_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_erp_action(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.dasd_device*
  store %struct.dasd_device* %9, %struct.dasd_device** %4, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  store %struct.ccw_device* %12, %struct.ccw_device** %5, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %20 [
    i32 14736, label %17
    i32 8453, label %17
    i32 8455, label %17
    i32 5968, label %17
    i32 37699, label %19
    i32 14464, label %19
  ]

17:                                               ; preds = %1, %1, %1, %1
  %18 = load i32, i32* @dasd_3990_erp_action, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1, %1
  br label %20

20:                                               ; preds = %1, %19
  %21 = load i32, i32* @dasd_default_erp_action, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
