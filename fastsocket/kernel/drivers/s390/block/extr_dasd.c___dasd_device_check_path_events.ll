; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_device_check_path_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_device_check_path_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*, i64)* }

@DASD_STOPPED_DC_WAIT = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @__dasd_device_check_path_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dasd_device_check_path_events(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DASD_STOPPED_DC_WAIT, align 4
  %14 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %42

20:                                               ; preds = %9
  %21 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dasd_device*, i64)*, i32 (%struct.dasd_device*, i64)** %24, align 8
  %26 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %27 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %25(%struct.dasd_device* %26, i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %36 = call i32 @dasd_device_set_timer(%struct.dasd_device* %35, i32 50)
  br label %41

37:                                               ; preds = %20
  %38 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %39 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %19, %41, %1
  ret void
}

declare dso_local i32 @dasd_device_set_timer(%struct.dasd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
