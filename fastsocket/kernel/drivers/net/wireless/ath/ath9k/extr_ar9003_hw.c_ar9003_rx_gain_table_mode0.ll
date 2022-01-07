; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@ar9331_common_rx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_1p1 = common dso_local global i32 0, align 4
@ar9340Common_rx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9485_common_rx_gain_1_1 = common dso_local global i32 0, align 4
@ar955x_1p0_common_rx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_common_rx_gain_bounds = common dso_local global i32 0, align 4
@ar9580_1p0_rx_gain_table = common dso_local global i32 0, align 4
@ar9462_common_rx_gain_table_2p0 = common dso_local global i32 0, align 4
@ar9300Common_rx_gain_table_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode0(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = load i32, i32* @ar9331_common_rx_gain_1p2, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load i32, i32* @ar9331_common_rx_gain_1p1, align 4
  %19 = call i32 @INIT_INI_ARRAY(i32* %17, i32 %18)
  br label %79

20:                                               ; preds = %11
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* @ar9340Common_rx_gain_table_1p0, align 4
  %28 = call i32 @INIT_INI_ARRAY(i32* %26, i32 %27)
  br label %78

29:                                               ; preds = %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i64 @AR_SREV_9485_11(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* @ar9485_common_rx_gain_1_1, align 4
  %37 = call i32 @INIT_INI_ARRAY(i32* %35, i32 %36)
  br label %77

38:                                               ; preds = %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9550(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* @ar955x_1p0_common_rx_gain_table, align 4
  %46 = call i32 @INIT_INI_ARRAY(i32* %44, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 1
  %49 = load i32, i32* @ar955x_1p0_common_rx_gain_bounds, align 4
  %50 = call i32 @INIT_INI_ARRAY(i32* %48, i32 %49)
  br label %76

51:                                               ; preds = %38
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = call i64 @AR_SREV_9580(%struct.ath_hw* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i32, i32* @ar9580_1p0_rx_gain_table, align 4
  %59 = call i32 @INIT_INI_ARRAY(i32* %57, i32 %58)
  br label %75

60:                                               ; preds = %51
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 0
  %67 = load i32, i32* @ar9462_common_rx_gain_table_2p0, align 4
  %68 = call i32 @INIT_INI_ARRAY(i32* %66, i32 %67)
  br label %74

69:                                               ; preds = %60
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 0
  %72 = load i32, i32* @ar9300Common_rx_gain_table_2p2, align 4
  %73 = call i32 @INIT_INI_ARRAY(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77, %24
  br label %79

79:                                               ; preds = %78, %15
  br label %80

80:                                               ; preds = %79, %6
  ret void
}

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
