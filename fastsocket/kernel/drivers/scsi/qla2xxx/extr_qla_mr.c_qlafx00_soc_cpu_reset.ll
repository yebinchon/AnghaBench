; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soc_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soc_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@SOC_SW_RST_CONTROL_REG_CORE0 = common dso_local global i64 0, align 8
@SOC_FABRIC_RST_CONTROL_REG = common dso_local global i64 0, align 8
@SOC_INTERRUPT_SOURCE_I_CONTROL_REG = common dso_local global i64 0, align 8
@SOC_CORE_TIMER_REG = common dso_local global i64 0, align 8
@SOC_IRQ_ACK_REG = common dso_local global i64 0, align 8
@SOC_FABRIC_CONTROL_REG = common dso_local global i64 0, align 8
@SOC_FABRIC_CONFIG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qlafx00_soc_cpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_soc_cpu_reset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = load i64, i64* @SOC_SW_RST_CONTROL_REG_CORE0, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 8, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %15, i64 %20, i32 3841)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %31 = load i64, i64* @SOC_SW_RST_CONTROL_REG_CORE0, align 8
  %32 = add nsw i64 %31, 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 8, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %30, i64 %36, i32 16843009)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %43 = load i64, i64* @SOC_FABRIC_RST_CONTROL_REG, align 8
  %44 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %42, i64 %43, i32 18809089)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %56, %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 115
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = load i64, i64* @SOC_INTERRUPT_SOURCE_I_CONTROL_REG, align 8
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 4, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %49, i64 %54, i32 0)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %45

59:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %69 = load i64, i64* @SOC_CORE_TIMER_REG, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 256, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 4, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %68, i64 %77, i32 0)
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %64

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %60

86:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %92 = load i64, i64* @SOC_IRQ_ACK_REG, align 8
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 256, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %91, i64 %96, i32 1023)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %87

101:                                              ; preds = %87
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %103 = load i64, i64* @SOC_FABRIC_CONTROL_REG, align 8
  %104 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %102, i64 %103, i32 2)
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %106 = load i64, i64* @SOC_FABRIC_CONFIG_REG, align 8
  %107 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %105, i64 %106, i32 3)
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 0
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %113 = load i64, i64* @SOC_FABRIC_RST_CONTROL_REG, align 8
  %114 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %112, i64 %113, i32 0)
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %116 = load i64, i64* @SOC_SW_RST_CONTROL_REG_CORE0, align 8
  %117 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %115, i64 %116, i32 3840)
  store i32 10, i32* %7, align 4
  br label %118

118:                                              ; preds = %124, %101
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = call i32 @msleep(i32 1000)
  %123 = call i32 (...) @barrier()
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %7, align 4
  br label %118

127:                                              ; preds = %118
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 0
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  ret void
}

declare dso_local i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
