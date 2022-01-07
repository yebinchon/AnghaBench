; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_eer_write(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, i32 %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %28 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %19
    i32 128, label %23
  ]

14:                                               ; preds = %12, %12
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dasd_eer_write_standard_trigger(%struct.dasd_device* %15, %struct.dasd_ccw_req* %16, i32 %17)
  br label %32

19:                                               ; preds = %12
  %20 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dasd_eer_write_standard_trigger(%struct.dasd_device* %20, %struct.dasd_ccw_req* null, i32 %21)
  br label %32

23:                                               ; preds = %12
  %24 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dasd_eer_write_snss_trigger(%struct.dasd_device* %24, %struct.dasd_ccw_req* %25, i32 %26)
  br label %32

28:                                               ; preds = %12
  %29 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dasd_eer_write_standard_trigger(%struct.dasd_device* %29, %struct.dasd_ccw_req* null, i32 %30)
  br label %32

32:                                               ; preds = %11, %28, %23, %19, %14
  ret void
}

declare dso_local i32 @dasd_eer_write_standard_trigger(%struct.dasd_device*, %struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @dasd_eer_write_snss_trigger(%struct.dasd_device*, %struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
