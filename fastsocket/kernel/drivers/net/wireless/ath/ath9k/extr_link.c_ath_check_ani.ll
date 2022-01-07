; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_check_ani.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_check_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_beacon_config, %struct.ath_hw* }
%struct.ath_beacon_config = type { i32 }
%struct.ath_hw = type { i64 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SC_OP_ANI_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_check_ani(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 2
  %7 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  store %struct.ath_hw* %7, %struct.ath_hw** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  store %struct.ath_beacon_config* %9, %struct.ath_beacon_config** %4, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %17 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %72

21:                                               ; preds = %15
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %30 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %72

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %28
  br label %57

42:                                               ; preds = %22
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %50 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 0
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %72

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32, i32* @SC_OP_ANI_RUN, align 4
  %60 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 0
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @SC_OP_ANI_RUN, align 4
  %66 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %70 = call i32 @ath_start_ani(%struct.ath_softc* %69)
  br label %71

71:                                               ; preds = %64, %58
  br label %79

72:                                               ; preds = %54, %39, %20
  %73 = load i32, i32* @SC_OP_ANI_RUN, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %78 = call i32 @ath_stop_ani(%struct.ath_softc* %77)
  br label %79

79:                                               ; preds = %72, %71
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath_start_ani(%struct.ath_softc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath_stop_ani(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
