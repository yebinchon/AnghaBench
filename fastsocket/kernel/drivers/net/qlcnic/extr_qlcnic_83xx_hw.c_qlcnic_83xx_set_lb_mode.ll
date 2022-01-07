; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_set_lb_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_set_lb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_3__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@QLC_83XX_IDC_COMP_AEN = common dso_local global i32 0, align 4
@QLCNIC_ILB_MODE = common dso_local global i64 0, align 8
@QLC_83XX_CFG_LOOPBACK_HSS = common dso_local global i32 0, align 4
@QLCNIC_ELB_MODE = common dso_local global i64 0, align 8
@QLC_83XX_CFG_LOOPBACK_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to Set Loopback Mode = 0x%x.\0A\00", align 1
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_ILB_MAX_RCV_LOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"FW did not generate IDC completion AEN\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_set_lb_mode(%struct.qlcnic_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 3
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = call i32 @qlcnic_83xx_get_port_config(%struct.qlcnic_adapter* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %23, i32* %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @QLCNIC_ILB_MODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load i32, i32* @QLC_83XX_CFG_LOOPBACK_HSS, align 4
  %33 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %19
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @QLCNIC_ELB_MODE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @QLC_83XX_CFG_LOOPBACK_EXT, align 4
  %43 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = call i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %65 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %66 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %64, i32* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %119

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %104, %70
  %72 = call i32 @msleep(i32 300)
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = call i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @QLCNIC_ILB_MAX_RCV_LOOP, align 4
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %94 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %95 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @clear_bit(i32 %93, i32* %96)
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %98, i64 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %119

103:                                              ; preds = %82
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %106 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %107 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i64 @test_bit(i32 %105, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %71, label %111

111:                                              ; preds = %104
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %117 = call i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter* %112, i32 %115, i32 0, i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %111, %87, %52, %17
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @qlcnic_83xx_get_port_config(%struct.qlcnic_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
