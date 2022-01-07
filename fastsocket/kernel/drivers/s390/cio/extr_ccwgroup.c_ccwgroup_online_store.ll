; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_online_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_online_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccwgroup_device = type { i32 }
%struct.ccwgroup_driver = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ccwgroup_online_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccwgroup_online_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccwgroup_device*, align 8
  %11 = alloca %struct.ccwgroup_driver*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %74

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device* %22)
  store %struct.ccwgroup_device* %23, %struct.ccwgroup_device** %10, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ccwgroup_driver* @to_ccwgroupdrv(i32 %26)
  store %struct.ccwgroup_driver* %27, %struct.ccwgroup_driver** %11, align 8
  %28 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %11, align 8
  %29 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @try_module_get(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %74

36:                                               ; preds = %21
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strict_strtoul(i8* %37, i32 0, i64* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %60

42:                                               ; preds = %36
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %47 = call i32 @ccwgroup_set_online(%struct.ccwgroup_device* %46)
  store i32 %47, i32* %13, align 4
  br label %59

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %10, align 8
  %53 = call i32 @ccwgroup_set_offline(%struct.ccwgroup_device* %52)
  store i32 %53, i32* %13, align 4
  br label %58

54:                                               ; preds = %48
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %11, align 8
  %62 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @module_put(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi i64 [ %68, %67 ], [ %71, %69 ]
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %72, %33, %18
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local %struct.ccwgroup_device* @to_ccwgroupdev(%struct.device*) #1

declare dso_local %struct.ccwgroup_driver* @to_ccwgroupdrv(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @ccwgroup_set_online(%struct.ccwgroup_device*) #1

declare dso_local i32 @ccwgroup_set_offline(%struct.ccwgroup_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
