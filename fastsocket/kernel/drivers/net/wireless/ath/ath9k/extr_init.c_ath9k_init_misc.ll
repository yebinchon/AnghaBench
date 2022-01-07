; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_14__*, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32**, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ath_common = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ath_ani_calibrate = common dso_local global i32 0, align 4
@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@ATH_TXPOWER_MAX = common dso_local global i32 0, align 4
@ath_bcast_mac = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ATH9K_SLOT_TIME_9 = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_INIT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_misc(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* @ath_ani_calibrate, align 4
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = ptrtoint %struct.ath_softc* %13 to i64
  %15 = call i32 @setup_timer(i32* %11, i32 %12, i64 %14)
  %16 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ATH_TXPOWER_MAX, align 4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %24 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ath_bcast_mac, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @ATH9K_SLOT_TIME_9, align 4
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32** %38)
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* @ATH_ANT_DIV_COMB_INIT_COUNT, align 4
  %64 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %52
  %68 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 8, i32* %76, align 4
  %77 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i32 255, i32* %82, align 4
  %83 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  store i32 15, i32* %85, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
