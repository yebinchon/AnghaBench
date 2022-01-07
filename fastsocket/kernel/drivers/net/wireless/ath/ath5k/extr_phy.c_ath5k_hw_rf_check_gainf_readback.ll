; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_check_gainf_readback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_check_gainf_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_hw = type { i32*, i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR5K_RF5111 = common dso_local global i64 0, align 8
@rf_regs_5111 = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_RFGAIN_STEP = common dso_local global i32 0, align 4
@AR5K_GAIN_DYN_ADJUST_HI_MARGIN = common dso_local global i32 0, align 4
@AR5K_GAIN_DYN_ADJUST_LO_MARGIN = common dso_local global i32 0, align 4
@rf_regs_5112 = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_MIXVGA_OVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf_check_gainf_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf_check_gainf_readback(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_rf_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %143

14:                                               ; preds = %1
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AR5K_RF5111, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %14
  %24 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5111, align 8
  store %struct.ath5k_rf_reg* %24, %struct.ath5k_rf_reg** %4, align 8
  %25 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5111, align 8
  %26 = call i8* @ARRAY_SIZE(%struct.ath5k_rf_reg* %25)
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %30 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %4, align 8
  %31 = load i32, i32* @AR5K_RF_RFGAIN_STEP, align 4
  %32 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %29, %struct.ath5k_rf_reg* %30, i32 0, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %33, align 16
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 63
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 50, %36 ], [ %39, %37 ]
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 63
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 16
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 64, %45 ], [ %48, %46 ]
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 50
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @AR5K_GAIN_DYN_ADJUST_HI_MARGIN, align 4
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ -5, %62 ]
  %65 = sub nsw i32 %57, %64
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 63
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @AR5K_GAIN_DYN_ADJUST_LO_MARGIN, align 4
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = add nsw i32 %70, %77
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %106

82:                                               ; preds = %14
  %83 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112, align 8
  store %struct.ath5k_rf_reg* %83, %struct.ath5k_rf_reg** %4, align 8
  %84 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112, align 8
  %85 = call i8* @ARRAY_SIZE(%struct.ath5k_rf_reg* %84)
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %89 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %4, align 8
  %90 = load i32, i32* @AR5K_RF_MIXVGA_OVR, align 4
  %91 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %88, %struct.ath5k_rf_reg* %89, i32 0, i32 %90, i32 0)
  store i32 %91, i32* %6, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %93, align 16
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 83, i32* %97, align 4
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 83, i32* %98, align 4
  br label %105

99:                                               ; preds = %82
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 107, i32* %100, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 107, i32* %101, align 4
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 55, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %76
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = icmp sge i32 %110, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %118, %120
  br i1 %121, label %140, label %122

122:                                              ; preds = %114, %106
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp sle i32 %134, %136
  br label %138

138:                                              ; preds = %130, %122
  %139 = phi i1 [ false, %122 ], [ %137, %130 ]
  br label %140

140:                                              ; preds = %138, %114
  %141 = phi i1 [ true, %114 ], [ %139, %138 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %13
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @ARRAY_SIZE(%struct.ath5k_rf_reg*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
