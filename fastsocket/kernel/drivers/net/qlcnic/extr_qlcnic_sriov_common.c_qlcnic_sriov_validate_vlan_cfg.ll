; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_validate_vlan_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_validate_vlan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i64, i64, i32, i64*, i64 }

@QLC_GUEST_VLAN_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_sriov*, i64, i32)* @qlcnic_sriov_validate_vlan_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_sriov* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_sriov*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QLC_GUEST_VLAN_MODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %78

31:                                               ; preds = %25
  %32 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %33 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %40 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %5, align 8
  %45 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %78

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %31
  br label %77

66:                                               ; preds = %22
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %73, %61, %28, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
