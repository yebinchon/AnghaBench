; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_pm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_pm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_pm_func_cfg = type { i64, i64 }

@QL_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_pm_func_cfg*, i32)* @validate_pm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_pm_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_pm_func_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_pm_func_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_pm_func_cfg* %1, %struct.qlcnic_pm_func_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %70, %3
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.qlcnic_pm_func_cfg*, %struct.qlcnic_pm_func_cfg** %6, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qlcnic_pm_func_cfg, %struct.qlcnic_pm_func_cfg* %20, i64 %22
  %24 = getelementptr inbounds %struct.qlcnic_pm_func_cfg, %struct.qlcnic_pm_func_cfg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.qlcnic_pm_func_cfg*, %struct.qlcnic_pm_func_cfg** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_pm_func_cfg, %struct.qlcnic_pm_func_cfg* %26, i64 %28
  %30 = getelementptr inbounds %struct.qlcnic_pm_func_cfg, %struct.qlcnic_pm_func_cfg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %32, i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %19
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %40, i64 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %46, i32* %4, align 4
  br label %74

47:                                               ; preds = %39
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %15

73:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %67, %45, %37
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
