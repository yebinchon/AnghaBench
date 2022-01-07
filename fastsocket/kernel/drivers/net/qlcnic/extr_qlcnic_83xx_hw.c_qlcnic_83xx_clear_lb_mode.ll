; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_clear_lb_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_clear_lb_mode.c"
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
@.str = private unnamed_addr constant [39 x i8] c"Failed to Clear Loopback Mode = 0x%x.\0A\00", align 1
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_ILB_MAX_RCV_LOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Firmware didn't sent IDC completion AEN\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %0, i64 %1) #0 {
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
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %16, i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @QLCNIC_ILB_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @QLC_83XX_CFG_LOOPBACK_HSS, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %28 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @QLCNIC_ELB_MODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @QLC_83XX_CFG_LOOPBACK_EXT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = call i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %60 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %61 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %59, i32* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %111

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %96, %65
  %67 = call i32 @msleep(i32 300)
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = call i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @QLCNIC_ILB_MAX_RCV_LOOP, align 4
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %89 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %88, i32* %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %111

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* @QLC_83XX_IDC_COMP_AEN, align 4
  %98 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %99 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i64 @test_bit(i32 %97, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %66, label %103

103:                                              ; preds = %96
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %109 = call i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter* %104, i32 %107, i32 0, i32 %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %82, %47
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sre_macaddr_change(%struct.qlcnic_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
