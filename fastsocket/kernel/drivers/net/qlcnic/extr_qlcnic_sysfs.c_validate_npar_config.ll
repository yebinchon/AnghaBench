; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_npar_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_npar_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_npar_func_cfg = type { i32, i32, i32 }

@QL_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_npar_func_cfg*, i32)* @validate_npar_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_npar_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_npar_func_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_npar_func_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_npar_func_cfg* %1, %struct.qlcnic_npar_func_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %48, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.qlcnic_npar_func_cfg*, %struct.qlcnic_npar_func_cfg** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %15, i64 %17
  %19 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.qlcnic_npar_func_cfg*, %struct.qlcnic_npar_func_cfg** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %28, i64 %30
  %32 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_VALID_BW(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.qlcnic_npar_func_cfg*, %struct.qlcnic_npar_func_cfg** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %37, i64 %39
  %41 = getelementptr inbounds %struct.qlcnic_npar_func_cfg, %struct.qlcnic_npar_func_cfg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IS_VALID_BW(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36, %27
  %46 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %10

51:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %45, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @IS_VALID_BW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
