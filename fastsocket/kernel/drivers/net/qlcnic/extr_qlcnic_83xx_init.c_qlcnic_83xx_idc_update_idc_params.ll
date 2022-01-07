; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_update_idc_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_update_idc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i64, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64, i32 }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@QLC_83XX_MODULE_LOADED = common dso_local global i32 0, align 4
@QLC_83XX_IDC_FW_POLL_DELAY = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_idc_update_idc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_idc_update_idc_params(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 2
  %6 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  store %struct.qlcnic_hardware_context* %6, %struct.qlcnic_hardware_context** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = call i32 @qlcnic_83xx_idc_update_drv_presence_reg(%struct.qlcnic_adapter* %7, i32 1, i32 1)
  %9 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  %13 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = call i32 @set_bit(i32 %9, i32* %14)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %17 = call i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter* %16, i32 0, i32 1)
  %18 = load i32, i32* @QLC_83XX_MODULE_LOADED, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 2
  %21 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %20, align 8
  %22 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = call i32 @set_bit(i32 %18, i32* %23)
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @QLC_83XX_IDC_FW_POLL_DELAY, align 4
  %29 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %36 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  ret void
}

declare dso_local i32 @qlcnic_83xx_idc_update_drv_presence_reg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
