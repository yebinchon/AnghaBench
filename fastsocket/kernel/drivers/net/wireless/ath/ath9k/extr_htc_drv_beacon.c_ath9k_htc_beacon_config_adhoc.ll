; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_adhoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.htc_beacon_config = type { i64 }
%struct.ath_common = type { i32 }

@FUDGE = common dso_local global i64 0, align 8
@DEFAULT_SWBA_RESPONSE = common dso_local global i64 0, align 8
@MIN_SWBA_RESPONSE = common dso_local global i64 0, align 8
@OP_ENABLE_BEACON = common dso_local global i32 0, align 4
@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"IBSS Beacon config, intval: %d, nexttbtt: %u, resp_time: %d, imask: 0x%x\0A\00", align 1
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.htc_beacon_config*)* @ath9k_htc_beacon_config_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv* %0, %struct.htc_beacon_config* %1) #0 {
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
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_8__* %16)
  store %struct.ath_common* %17, %struct.ath_common** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.htc_beacon_config*, %struct.htc_beacon_config** %4, align 8
  %19 = getelementptr inbounds %struct.htc_beacon_config, %struct.htc_beacon_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_8__* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = ashr i32 %26, 32
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @TSF_TO_TU(i32 %27, i32 %28)
  %30 = load i64, i64* @FUDGE, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %36, %2
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %32, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @DEFAULT_SWBA_RESPONSE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* @DEFAULT_SWBA_RESPONSE, align 8
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  br label %58

51:                                               ; preds = %40
  %52 = load i64, i64* @MIN_SWBA_RESPONSE, align 8
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32, i32* @OP_ENABLE_BEACON, align 4
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %60, i32 0, i32 2
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %70 = load i32, i32* @CONFIG, align 4
  %71 = load %struct.htc_beacon_config*, %struct.htc_beacon_config** %4, align 8
  %72 = getelementptr inbounds %struct.htc_beacon_config, %struct.htc_beacon_config* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %74, i64 %80, i32 %81)
  %83 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %84 = call i32 @WMI_CMD(i32 %83)
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @TU_TO_USEC(i64 %88)
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @TU_TO_USEC(i64 %90)
  %92 = call i32 @ath9k_hw_beaconinit(%struct.TYPE_8__* %87, i32 %89, i32 %91)
  %93 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %94 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @cpu_to_be32(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %99 = call i32 @WMI_CMD_BUF(i32 %98, i32* %10)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_8__*) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.TYPE_8__*) #1

declare dso_local i64 @TSF_TO_TU(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_hw_beaconinit(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @TU_TO_USEC(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
