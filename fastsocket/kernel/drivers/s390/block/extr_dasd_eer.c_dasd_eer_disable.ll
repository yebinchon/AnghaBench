; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, %struct.dasd_ccw_req* }
%struct.dasd_ccw_req = type { i32 }

@DASD_FLAG_EER_SNSS = common dso_local global i32 0, align 4
@DASD_FLAG_EER_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_eer_disable(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 2
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %9 = icmp ne %struct.dasd_ccw_req* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @get_ccwdev_lock(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 2
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %19, align 8
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %3, align 8
  %21 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 2
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %22, align 8
  %23 = load i32, i32* @DASD_FLAG_EER_SNSS, align 4
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @DASD_FLAG_EER_IN_USE, align 4
  %28 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 1
  %30 = call i32 @test_and_clear_bit(i32 %27, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_ccwdev_lock(i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %38 = icmp ne %struct.dasd_ccw_req* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %11
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %44 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %45 = call i32 @dasd_kfree_request(%struct.dasd_ccw_req* %43, %struct.dasd_device* %44)
  br label %46

46:                                               ; preds = %10, %42, %39, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_kfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
