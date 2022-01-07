; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@ar9331_common_wo_xlna_rx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_common_wo_xlna_rx_gain_1p1 = common dso_local global i32 0, align 4
@ar9340Common_wo_xlna_rx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9485Common_wo_xlna_rx_gain_1_1 = common dso_local global i32 0, align 4
@ar9462_common_wo_xlna_rx_gain_table_2p0 = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@ar9580_1p0_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar9300Common_wo_xlna_rx_gain_table_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode1(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_1p2, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load i32, i32* @ar9331_common_wo_xlna_rx_gain_1p1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %89

20:                                               ; preds = %11
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9340Common_wo_xlna_rx_gain_table_1p0, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9485_11(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_1_1, align 4
  %37 = call i32 @INIT_INI_ARRAY(i32* %35, i32 %36)
  br label %87

38:                                               ; preds = %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* @ar9462_common_wo_xlna_rx_gain_table_2p0, align 4
  %46 = call i32 @INIT_INI_ARRAY(i32* %44, i32 %45)
  br label %86

47:                                               ; preds = %38
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = call i64 @AR_SREV_9550(%struct.ath_hw* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_table, align 4
  %55 = call i32 @INIT_INI_ARRAY(i32* %53, i32 %54)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 1
  %58 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_bounds, align 4
  %59 = call i32 @INIT_INI_ARRAY(i32* %57, i32 %58)
  br label %85

60:                                               ; preds = %47
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = call i64 @AR_SREV_9580(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 0
  %67 = load i32, i32* @ar9580_1p0_wo_xlna_rx_gain_table, align 4
  %68 = call i32 @INIT_INI_ARRAY(i32* %66, i32 %67)
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = call i64 @AR_SREV_9565(%struct.ath_hw* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 0
  %76 = load i32, i32* @ar9565_1p0_common_wo_xlna_rx_gain_table, align 4
  %77 = call i32 @INIT_INI_ARRAY(i32* %75, i32 %76)
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %79, i32 0, i32 0
  %81 = load i32, i32* @ar9300Common_wo_xlna_rx_gain_table_2p2, align 4
  %82 = call i32 @INIT_INI_ARRAY(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %42
  br label %87

87:                                               ; preds = %86, %33
  br label %88

88:                                               ; preds = %87, %24
  br label %89

89:                                               ; preds = %88, %15
  br label %90

90:                                               ; preds = %89, %6
  ret void
}

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
