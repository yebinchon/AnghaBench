; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_block_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_block_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"blocking request queue for %is\00", align 1
@HZ = common dso_local global i32 0, align 4
@DASD_STOPPED_PENDING = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i32)* @dasd_3990_erp_block_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_block_queue(%struct.dasd_ccw_req* %0, i32 %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 2
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  %10 = load i32, i32* @DBF_INFO, align 4
  %11 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = sdiv i32 %12, %13
  %15 = call i32 @DBF_DEV_EVENT(i32 %10, %struct.dasd_device* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_ccwdev_lock(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %23 = load i32, i32* @DASD_STOPPED_PENDING, align 4
  %24 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %22, i32 %23)
  %25 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_ccwdev_lock(i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  %31 = load i32, i32* @DASD_CQR_FILLED, align 4
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dasd_block_set_timer(i64 %41, i32 %42)
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dasd_device_set_timer(%struct.dasd_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_block_set_timer(i64, i32) #1

declare dso_local i32 @dasd_device_set_timer(%struct.dasd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
