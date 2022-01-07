; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_pcu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_pcu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i64, i64 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_TUNE_RSSI_THRES = common dso_local global i32 0, align 4
@AR5K_TUNE_BMISS_THRES = common dso_local global i32 0, align 4
@AR5K_RSSI_THR_BMISS_S = common dso_local global i32 0, align 4
@AR5K_RSSI_THR = common dso_local global i32 0, align 4
@AR5K_SREV_AR2413 = common dso_local global i64 0, align 8
@AR5K_MIC_QOS_CTL = common dso_local global i32 0, align 4
@AR5K_MIC_QOS_SEL = common dso_local global i32 0, align 4
@AR5K_QOS_NOACK_2BIT_VALUES = common dso_local global i32 0, align 4
@AR5K_QOS_NOACK_BIT_OFFSET = common dso_local global i32 0, align 4
@AR5K_QOS_NOACK_BYTE_OFFSET = common dso_local global i32 0, align 4
@AR5K_QOS_NOACK = common dso_local global i32 0, align 4
@AR5K_STA_ID1_BASE_RATE_11B = common dso_local global i32 0, align 4
@AR5K_STA_ID1_ACKCTS_6MB = common dso_local global i32 0, align 4
@AR5K_STA_ID1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_pcu_init(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = call i32 @ath5k_hw_set_bssid(%struct.ath5k_hw* %6)
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ath5k_hw_set_opmode(%struct.ath5k_hw* %8, i32 %9)
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR5K_AR5212, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = call i32 @ath5k_hw_write_rate_duration(%struct.ath5k_hw* %22)
  br label %24

24:                                               ; preds = %21, %16, %2
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = load i32, i32* @AR5K_TUNE_RSSI_THRES, align 4
  %27 = load i32, i32* @AR5K_TUNE_BMISS_THRES, align 4
  %28 = load i32, i32* @AR5K_RSSI_THR_BMISS_S, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @AR5K_RSSI_THR, align 4
  %32 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %25, i32 %30, i32 %31)
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AR5K_SREV_AR2413, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %40 = load i32, i32* @AR5K_MIC_QOS_CTL, align 4
  %41 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %39, i32 65706, i32 %40)
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = load i32, i32* @AR5K_MIC_QOS_SEL, align 4
  %44 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %42, i32 12816, i32 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AR5K_AR5212, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %53 = load i32, i32* @AR5K_QOS_NOACK_2BIT_VALUES, align 4
  %54 = call i32 @AR5K_REG_SM(i32 2, i32 %53)
  %55 = load i32, i32* @AR5K_QOS_NOACK_BIT_OFFSET, align 4
  %56 = call i32 @AR5K_REG_SM(i32 5, i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @AR5K_QOS_NOACK_BYTE_OFFSET, align 4
  %59 = call i32 @AR5K_REG_SM(i32 0, i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @AR5K_QOS_NOACK, align 4
  %62 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %52, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %45
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ath5k_hw_set_coverage_class(%struct.ath5k_hw* %69, i64 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AR5K_AR5212, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load i32, i32* @AR5K_STA_ID1_BASE_RATE_11B, align 4
  %82 = load i32, i32* @AR5K_STA_ID1_ACKCTS_6MB, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %90 = load i32, i32* @AR5K_STA_ID1, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %89, i32 %90, i32 %91)
  br label %98

93:                                               ; preds = %80
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %95 = load i32, i32* @AR5K_STA_ID1, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %74
  ret void
}

declare dso_local i32 @ath5k_hw_set_bssid(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_opmode(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_write_rate_duration(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @ath5k_hw_set_coverage_class(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
