; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_first_to_load_function_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_first_to_load_function_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_RECOVER_DRV_LOCK = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DEV_COLD = common dso_local global i64 0, align 8
@qlcnic_load_fw_file = common dso_local global i64 0, align 8
@qlcnic_auto_fw_reset = common dso_local global i64 0, align 8
@QLC_83XX_IDC_CTRL = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_idc_first_to_load_function_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_idc_first_to_load_function_handler(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = call i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @QLC_83XX_RECOVER_DRV_LOCK, align 4
  %17 = call i32 @QLCWRX(%struct.TYPE_5__* %15, i32 %16, i64 0)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i64 @qlcnic_83xx_idc_update_major_version(%struct.qlcnic_adapter* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %22)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %91

26:                                               ; preds = %12
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* @QLC_83XX_IDC_DEV_STATE, align 4
  %31 = call i64 @QLCRDX(%struct.TYPE_5__* %29, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @qlcnic_83xx_idc_check_state_validity(%struct.qlcnic_adapter* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %91

41:                                               ; preds = %26
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @QLC_83XX_IDC_DEV_COLD, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* @qlcnic_load_fw_file, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* @QLC_83XX_IDC_DEV_STATE, align 4
  %53 = load i64, i64* @QLC_83XX_IDC_DEV_COLD, align 8
  %54 = call i32 @QLCWRX(%struct.TYPE_5__* %51, i32 %52, i64 %53)
  %55 = load i64, i64* @QLC_83XX_IDC_DEV_COLD, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %48, %45, %41
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %57, i64* %62, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @QLC_83XX_IDC_DEV_COLD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = call i32 @qlcnic_83xx_idc_cold_state_handler(%struct.qlcnic_adapter* %67)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i64, i64* @qlcnic_auto_fw_reset, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %77 = call i64 @QLCRDX(%struct.TYPE_5__* %75, i32 %76)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  store i64 %81, i64* %5, align 8
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @QLCWRX(%struct.TYPE_5__* %84, i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %72, %69
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %36, %21, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWRX(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i64 @qlcnic_83xx_idc_update_major_version(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCRDX(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @qlcnic_83xx_idc_check_state_validity(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_83xx_idc_cold_state_handler(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
