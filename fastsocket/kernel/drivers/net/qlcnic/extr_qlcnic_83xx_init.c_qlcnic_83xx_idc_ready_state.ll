; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_ready_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_ready_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, i32, i32, %struct.TYPE_3__* }
%struct.qlcnic_hardware_context = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i64 (%struct.qlcnic_adapter.0*)* }
%struct.qlcnic_adapter.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_TEMP_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Error: device temperature %d above limits\0A\00", align 1
@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@QLC_83XX_IDC_CTRL = common dso_local global i32 0, align 4
@QLCNIC_FW_HANG = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY = common dso_local global i32 0, align 4
@QLC_83XX_IDC_GRACEFULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_idc_ready_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_idc_ready_state(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64 (%struct.qlcnic_adapter.0*)*, i64 (%struct.qlcnic_adapter.0*)** %12, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = bitcast %struct.qlcnic_adapter* %14 to %struct.qlcnic_adapter.0*
  %16 = call i64 %13(%struct.qlcnic_adapter.0* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %144

21:                                               ; preds = %1
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i64 @qlcnic_check_temp(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLCNIC_TEMP_PANIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = call i32 @qlcnic_83xx_idc_check_fan_failure(%struct.qlcnic_adapter* %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %39, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %45 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %46 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i32 @clear_bit(i32 %44, i32* %47)
  %49 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = call i32 @qlcnic_83xx_idc_detach_driver(%struct.qlcnic_adapter* %53)
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = call i32 @qlcnic_83xx_idc_enter_failed_state(%struct.qlcnic_adapter* %55, i32 1)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %144

59:                                               ; preds = %25
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 0
  %63 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %62, align 8
  %64 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %65 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = call i32 @qlcnic_83xx_check_heartbeat(%struct.qlcnic_adapter* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %60
  %71 = load i32, i32* @QLCNIC_FW_HANG, align 4
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = call i32 @clear_bit(i32 %81, i32* %84)
  %86 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %91 = call i32 @qlcnic_83xx_idc_enter_need_reset_state(%struct.qlcnic_adapter* %90, i32 1)
  br label %92

92:                                               ; preds = %80, %70
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %144

95:                                               ; preds = %60
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @QLC_83XX_IDC_GRACEFULL_RESET, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %102 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100, %95
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %108 = call i32 @qlcnic_83xx_idc_enter_need_reset_state(%struct.qlcnic_adapter* %107, i32 1)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %144

110:                                              ; preds = %100
  %111 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %112 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @QLC_83XX_IDC_DISABLE_FW_RESET_RECOVERY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 0
  %123 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %122, align 8
  %124 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %126 = call i32 @qlcnic_83xx_idc_tx_soft_reset(%struct.qlcnic_adapter* %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %144

128:                                              ; preds = %115, %110
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %129, i32 0, i32 0
  %131 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %130, align 8
  %132 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %138 = call i32 @qlcnic_83xx_idc_enter_need_quiesce(%struct.qlcnic_adapter* %137, i32 1)
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %140 = call i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter* %139, i32 0, i32 1)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %144

142:                                              ; preds = %128
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %136, %120, %106, %92, %31, %18
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @qlcnic_check_temp(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_check_fan_failure(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_idc_detach_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_failed_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @qlcnic_83xx_check_heartbeat(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_need_reset_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_tx_soft_reset(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_need_quiesce(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
