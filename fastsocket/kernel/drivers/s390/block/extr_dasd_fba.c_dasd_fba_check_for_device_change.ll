; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_for_device_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_for_device_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }

@DEV_STAT_ATTENTION = common dso_local global i8 0, align 1
@DEV_STAT_DEV_END = common dso_local global i8 0, align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* @dasd_fba_check_for_device_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_fba_check_for_device_change(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i8, align 1
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load i8, i8* @DEV_STAT_ATTENTION, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* @DEV_STAT_DEV_END, align 1
  %11 = sext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* @DEV_STAT_UNIT_EXCEP, align 1
  %14 = sext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load %struct.irb*, %struct.irb** %6, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %31 = call i32 @dasd_generic_handle_state_change(%struct.dasd_device* %30)
  br label %32

32:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @dasd_generic_handle_state_change(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
