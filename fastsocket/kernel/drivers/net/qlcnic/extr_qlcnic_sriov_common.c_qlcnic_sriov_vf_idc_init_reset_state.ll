; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_idc_init_reset_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_idc_init_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i64, i32 }

@QLC_83XX_IDC_DEV_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Firmware hang detected by VF 0x%x\0A\00", align 1
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_vf_idc_init_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_vf_idc_init_reset_state(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlc_83xx_idc*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.qlc_83xx_idc* %8, %struct.qlc_83xx_idc** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %3, align 8
  %15 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QLC_83XX_IDC_DEV_READY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 2
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %35 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %3, align 8
  %36 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %39 = call i32 @qlcnic_sriov_vf_detach(%struct.qlcnic_adapter* %38)
  br label %40

40:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_vf_detach(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
