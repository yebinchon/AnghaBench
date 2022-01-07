; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_choose_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_choose_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_5__*, %struct.ath_beacon_config }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_beacon_config = type { i64 }
%struct.ath_common = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"slot 0, tsf: %llu\0A\00", align 1
@ATH_DEFAULT_BINTVAL = common dso_local global i32 0, align 4
@ATH_BCBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"slot: %d tsf: %llu tsftu: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_beacon_choose_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_beacon_choose_slot(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath_beacon_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__* %12)
  store %struct.ath_common* %13, %struct.ath_common** %4, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  store %struct.ath_beacon_config* %15, %struct.ath_beacon_config** %5, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %25 = load i32, i32* @BEACON, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_5__* %28)
  %30 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %33 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ATH_DEFAULT_BINTVAL, align 4
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i64 [ %34, %36 ], [ %39, %37 ]
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @ath9k_hw_gettsf64(%struct.TYPE_5__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @TU_TO_USEC(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ATH_BCBUF, align 4
  %60 = mul nsw i32 %58, %59
  %61 = ashr i32 %60, 32
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ATH_BCBUF, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @TSF_TO_TU(i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ATH_BCBUF, align 4
  %69 = mul nsw i32 %67, %68
  %70 = srem i32 %66, %69
  %71 = load i32, i32* %6, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %74 = load i32, i32* @BEACON, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ATH_BCBUF, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %73, i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %40, %23
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.TYPE_5__*) #1

declare dso_local i64 @TU_TO_USEC(i32) #1

declare dso_local i32 @TSF_TO_TU(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
