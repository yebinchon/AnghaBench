; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPATH_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unit %d is disabled, can't reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_reset(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipath_devdata*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.ipath_devdata* %12, %struct.ipath_devdata** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 5
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @memcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %24 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IPATH_DISABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ipath_reset_device(i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %29, %19
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i64 [ %47, %45 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @ipath_reset_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
