; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i64, i64 }
%struct.qlcnic_info = type { i32, i32, i32, i64 }

@QLC_83XX_SRIOV_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_pf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_init(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_info, align 8
  %6 = alloca %struct.qlcnic_info, align 8
  %7 = alloca %struct.qlcnic_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %4, align 8
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = call i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = call i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter* %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %100

27:                                               ; preds = %20
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter* %28, i64 %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %96

34:                                               ; preds = %27
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %35, i32 1, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %92

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = call i32 @qlcnic_sriov_get_pf_info(%struct.qlcnic_adapter* %42, %struct.qlcnic_info* %6)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %88

47:                                               ; preds = %41
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %48, %struct.qlcnic_info* %5, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %88

54:                                               ; preds = %47
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter* %55, %struct.qlcnic_info* %7, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %88

61:                                               ; preds = %54
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = call i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter* %62, i32 1)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %88

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %71 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %79 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @QLC_83XX_SRIOV_MODE, align 4
  %85 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %86 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %100

88:                                               ; preds = %66, %60, %53, %46
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %89, i32 0, i64 %90)
  br label %92

92:                                               ; preds = %88, %40
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter* %93, i64 %94, i32 0)
  br label %96

96:                                               ; preds = %92, %33
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %98 = call i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter* %97, i32 0)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %67, %25, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_cfg_vlan_filtering(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter*, i64, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter*, i32, i64) #1

declare dso_local i32 @qlcnic_sriov_get_pf_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64) #1

declare dso_local i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64) #1

declare dso_local i32 @qlcnic_sriov_cfg_bc_intr(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
