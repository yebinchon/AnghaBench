; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_config_default_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_config_default_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QLC_83XX_DRV_OP_MODE = common dso_local global i32 0, align 4
@__QLCNIC_SRIOV_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_OPMODE = common dso_local global i64 0, align 8
@qlcnic_83xx_init_default_driver = common dso_local global i32 0, align 4
@qlcnic_83xx_idc_ready_state_entry = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_default_opmode(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 2
  %8 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  store %struct.qlcnic_hardware_context* %8, %struct.qlcnic_hardware_context** %5, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = call i32 @qlcnic_get_func_no(%struct.qlcnic_adapter* %9)
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %12 = load i32, i32* @QLC_83XX_DRV_OP_MODE, align 4
  %13 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @__QLCNIC_SRIOV_CAPABLE, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @QLC_83XX_DEFAULT_OPMODE, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @QLC_83XX_DEFAULT_OPMODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @qlcnic_83xx_init_default_driver, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @qlcnic_83xx_idc_ready_state_entry, align 4
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @qlcnic_get_func_no(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
