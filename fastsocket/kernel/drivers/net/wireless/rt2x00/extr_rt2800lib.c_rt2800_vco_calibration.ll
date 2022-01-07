; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_vco_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_vco_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TX_PIN_CFG = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_DISABLE = common dso_local global i32 0, align 4
@RFCSR7_RF_TUNING = common dso_local global i32 0, align 4
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A0_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_vco_calibration(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @TX_PIN_CFG, align 4
  %7 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %5, i32 %6, i32* %3)
  %8 = load i32, i32* @TX_PIN_CFG_PA_PE_DISABLE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = load i32, i32* @TX_PIN_CFG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %11, i32 %12, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 139, label %19
    i32 138, label %19
    i32 137, label %19
    i32 136, label %19
    i32 133, label %19
    i32 135, label %19
    i32 134, label %27
    i32 132, label %27
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

19:                                               ; preds = %1, %1, %1, %1, %1, %1
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %20, i32 7, i32* %4)
  %22 = load i32, i32* @RFCSR7_RF_TUNING, align 4
  %23 = call i32 @rt2x00_set_field8(i32* %4, i32 %22, i32 1)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 7, i32 %25)
  br label %36

27:                                               ; preds = %1, %1, %1, %1, %1, %1
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %28, i32 3, i32* %4)
  %30 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %31 = call i32 @rt2x00_set_field8(i32* %4, i32 %30, i32 1)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 3, i32 %33)
  br label %36

35:                                               ; preds = %1
  br label %82

36:                                               ; preds = %27, %19
  %37 = call i32 @mdelay(i32 1)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = load i32, i32* @TX_PIN_CFG, align 4
  %40 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %38, i32 %39, i32* %3)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 14
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %57 [
    i32 3, label %50
    i32 2, label %53
    i32 1, label %56
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* @TX_PIN_CFG_PA_PE_G2_EN, align 4
  %52 = call i32 @rt2x00_set_field32(i32* %3, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %45, %50
  %54 = load i32, i32* @TX_PIN_CFG_PA_PE_G1_EN, align 4
  %55 = call i32 @rt2x00_set_field32(i32* %3, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %45, %53
  br label %57

57:                                               ; preds = %45, %56
  %58 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %59 = call i32 @rt2x00_set_field32(i32* %3, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %57
  br label %77

61:                                               ; preds = %36
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %73 [
    i32 3, label %66
    i32 2, label %69
    i32 1, label %72
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* @TX_PIN_CFG_PA_PE_A2_EN, align 4
  %68 = call i32 @rt2x00_set_field32(i32* %3, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %61, %66
  %70 = load i32, i32* @TX_PIN_CFG_PA_PE_A1_EN, align 4
  %71 = call i32 @rt2x00_set_field32(i32* %3, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %61, %69
  br label %73

73:                                               ; preds = %61, %72
  %74 = load i32, i32* @TX_PIN_CFG_PA_PE_A0_EN, align 4
  %75 = call i32 @rt2x00_set_field32(i32* %3, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = load i32, i32* @TX_PIN_CFG, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %35
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
