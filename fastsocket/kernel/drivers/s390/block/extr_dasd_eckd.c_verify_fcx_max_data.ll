; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_verify_fcx_max_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_verify_fcx_max_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_eckd_private = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"Detecting the maximum data size for zHPF requests failed (rc=%d) for a new path %x\0A\00", align 1
@FCX_MAX_DATA_FACTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"The maximum data size for zHPF requests %u on a new path %x is below the active maximum %u\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32)* @verify_fcx_max_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_fcx_max_data(%struct.dasd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %6, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ccw_device_get_mdc(%struct.TYPE_2__* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %29, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FCX_MAX_DATA_FACTOR, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %40 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %45 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %51 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %47, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %52)
  %54 = load i32, i32* @EACCES, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %43, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ccw_device_get_mdc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
