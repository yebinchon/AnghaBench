; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_cancel_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_cancel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@DASD_CQR_CLEARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cancelling request %p failed with rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_cancel_req(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 2
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %46 [
    i32 128, label %18
    i32 129, label %22
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @DASD_CQR_CLEARED, align 4
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.dasd_ccw_req*)**
  %28 = load i32 (%struct.dasd_ccw_req*)*, i32 (%struct.dasd_ccw_req*)** %27, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %30 = call i32 %28(%struct.dasd_ccw_req* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %38, i32 %39)
  br label %45

41:                                               ; preds = %22
  %42 = call i32 (...) @get_clock()
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %33
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %45, %18
  %48 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %50)
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32 %51, i64 %52)
  %54 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %55 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
