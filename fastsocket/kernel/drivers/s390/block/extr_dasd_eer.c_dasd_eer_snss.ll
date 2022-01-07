; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_snss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_snss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, %struct.dasd_ccw_req* }
%struct.dasd_ccw_req = type { i32, i32 }

@DASD_FLAG_EER_IN_USE = common dso_local global i32 0, align 4
@DASD_FLAG_EER_SNSS = common dso_local global i32 0, align 4
@DASD_CQR_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_eer_snss(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 2
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  store %struct.dasd_ccw_req* %6, %struct.dasd_ccw_req** %3, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = icmp ne %struct.dasd_ccw_req* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* @DASD_FLAG_EER_IN_USE, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 1
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @DASD_FLAG_EER_SNSS, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %36

21:                                               ; preds = %10
  %22 = load i32, i32* @DASD_FLAG_EER_SNSS, align 4
  %23 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 1
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load i32, i32* @DASD_CQR_QUEUED, align 4
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %28 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 0
  %31 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %35 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %34)
  br label %36

36:                                               ; preds = %21, %16, %9
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
