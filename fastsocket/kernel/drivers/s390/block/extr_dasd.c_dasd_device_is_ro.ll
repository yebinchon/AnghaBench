; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_device_is_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_device_is_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.ccw_dev_id = type { i32 }
%struct.diag210 = type { i32, i32, i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"diag210 failed for dev=%04x with rc=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_device_is_ro(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.ccw_dev_id, align 4
  %5 = alloca %struct.diag210, align 4
  %6 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %7 = load i32, i32* @MACHINE_IS_VM, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ccw_device_get_id(i32 %13, %struct.ccw_dev_id* %4)
  %15 = call i32 @memset(%struct.diag210* %5, i32 0, i32 12)
  %16 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.diag210, %struct.diag210* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.diag210, %struct.diag210* %5, i32 0, i32 0
  store i32 12, i32* %19, align 4
  %20 = call i32 @diag210(%struct.diag210* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %10
  %27 = getelementptr inbounds %struct.diag210, %struct.diag210* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @DBF_WARNING, align 4
  %32 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @DBF_EVENT(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %26, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @memset(%struct.diag210*, i32, i32) #1

declare dso_local i32 @diag210(%struct.diag210*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
