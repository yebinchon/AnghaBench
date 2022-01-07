; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.htc_beacon_config = type { i64 }
%struct.ath_common = type { i32 }

@ATH9K_HTC_MAX_BCN_VIF = common dso_local global i64 0, align 8
@DEFAULT_SWBA_RESPONSE = common dso_local global i64 0, align 8
@MIN_SWBA_RESPONSE = common dso_local global i64 0, align 8
@OP_TSF_RESET = common dso_local global i32 0, align 4
@FUDGE = common dso_local global i64 0, align 8
@OP_ENABLE_BEACON = common dso_local global i32 0, align 4
@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"AP Beacon config, intval: %d, nexttbtt: %u, resp_time: %d imask: 0x%x\0A\00", align 1
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.htc_beacon_config*)* @ath9k_htc_beacon_config_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_config_ap(%struct.ath9k_htc_priv* %0, %struct.htc_beacon_config* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.htc_beacon_config*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.htc_beacon_config* %1, %struct.htc_beacon_config** %4, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_9__* %16)
  store %struct.ath_common* %17, %struct.ath_common** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.htc_beacon_config*, %struct.htc_beacon_config** %4, align 8
  %19 = getelementptr inbounds %struct.htc_beacon_config, %struct.htc_beacon_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @ATH9K_HTC_MAX_BCN_VIF, align 8
  %22 = load i64, i64* %8, align 8
  %23 = sdiv i64 %22, %21
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @DEFAULT_SWBA_RESPONSE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i64, i64* @DEFAULT_SWBA_RESPONSE, align 8
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %29, i64* %34, align 8
  br label %42

35:                                               ; preds = %2
  %36 = load i64, i64* @MIN_SWBA_RESPONSE, align 8
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* @OP_TSF_RESET, align 4
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 2
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @ath9k_hw_reset_tsf(%struct.TYPE_9__* %51)
  %53 = load i32, i32* @OP_TSF_RESET, align 4
  %54 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %54, i32 0, i32 2
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  br label %77

57:                                               ; preds = %42
  %58 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_9__* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 32
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @TSF_TO_TU(i32 %63, i32 %64)
  %66 = load i64, i64* @FUDGE, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %72, %57
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %68, label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* @OP_ENABLE_BEACON, align 4
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %79, i32 0, i32 2
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %89 = load i32, i32* @CONFIG, align 4
  %90 = load %struct.htc_beacon_config*, %struct.htc_beacon_config** %4, align 8
  %91 = getelementptr inbounds %struct.htc_beacon_config, %struct.htc_beacon_config* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ath_dbg(%struct.ath_common* %88, i32 %89, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %92, i64 %93, i64 %99, i32 %100)
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %103 = call i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv* %102)
  %104 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %105 = call i32 @WMI_CMD(i32 %104)
  %106 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %107 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @TU_TO_USEC(i64 %109)
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @TU_TO_USEC(i64 %111)
  %113 = call i32 @ath9k_hw_beaconinit(%struct.TYPE_9__* %108, i32 %110, i32 %112)
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @cpu_to_be32(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %120 = call i32 @WMI_CMD_BUF(i32 %119, i32* %10)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_9__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_reset_tsf(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.TYPE_9__*) #1

declare dso_local i64 @TSF_TO_TU(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_hw_beaconinit(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @TU_TO_USEC(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
