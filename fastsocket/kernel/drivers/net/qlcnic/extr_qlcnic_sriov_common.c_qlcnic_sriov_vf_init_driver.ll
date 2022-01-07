; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_2__*, i32 }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_ADAPTER_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HAL Version: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_init_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_vf_init_driver(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_info, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = call i32 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter* %10, %struct.qlcnic_info* %4, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %17, %struct.qlcnic_info* %4, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %16
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = call i32 @qlcnic_sriov_get_vf_acl(%struct.qlcnic_adapter* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %79

34:                                               ; preds = %27
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = call i32 @qlcnic_sriov_vf_cfg_buff_desc(%struct.qlcnic_adapter* %42)
  %44 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %54, align 8
  %56 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %62 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %70 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %74 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %41, %38, %32, %24, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @qlcnic_sriov_get_vf_acl(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_cfg_buff_desc(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
