; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.net_device*, %struct.qlcnic_hardware_context* }
%struct.net_device = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i64, %struct.qlcnic_intrpt_config* }
%struct.qlcnic_intrpt_config = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_vf_detach(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlcnic_intrpt_config*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %3, align 8
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %12, align 8
  store %struct.qlcnic_intrpt_config* %13, %struct.qlcnic_intrpt_config** %4, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %22 = call i32 @qlcnic_83xx_disable_mbx_intr(%struct.qlcnic_adapter* %21)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @netif_device_detach(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @qlcnic_down(%struct.qlcnic_adapter* %29, %struct.net_device* %30)
  br label %32

32:                                               ; preds = %28, %1
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %39, i64 %40
  %42 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  %43 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %43, i64 %44
  %46 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.qlcnic_intrpt_config*, %struct.qlcnic_intrpt_config** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %47, i64 %48
  %50 = getelementptr inbounds %struct.qlcnic_intrpt_config, %struct.qlcnic_intrpt_config* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i32 @qlcnic_83xx_disable_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
