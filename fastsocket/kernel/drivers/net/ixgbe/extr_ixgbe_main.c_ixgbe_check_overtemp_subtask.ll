; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_check_overtemp_subtask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_check_overtemp_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* }
%struct.ixgbe_hw.1 = type opaque

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_EVENT = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0 = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_ERR_OVERTEMP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [154 x i8] c"Network adapter has been stopped because it has over heated. Restart the computer. If the problem persists, power off the system and replace the adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_check_overtemp_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_overtemp_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 3
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @__IXGBE_DOWN, align 4
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %104

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_CAPABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_EVENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %104

33:                                               ; preds = %25, %18
  %34 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_EVENT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %92 [
    i32 128, label %43
  ]

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IXGBE_EICR_GPI_SDP0, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %104

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %70, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = bitcast %struct.ixgbe_hw* %72 to %struct.ixgbe_hw.1*
  %74 = call i32 %71(%struct.ixgbe_hw.1* %73, i32* %5, i32* %6, i32 0)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %104

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %59, %54
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = call i32 %84(%struct.ixgbe_hw.0* %86)
  %88 = load i32, i32* @IXGBE_ERR_OVERTEMP, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %104

91:                                               ; preds = %79
  br label %99

92:                                               ; preds = %33
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @IXGBE_EICR_GPI_SDP0, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %104

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %91
  %100 = load i32, i32* @drv, align 4
  %101 = call i32 @e_crit(i32 %100, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %97, %90, %77, %53, %32, %17
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @e_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
