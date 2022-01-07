; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i64 }
%struct.ath_common = type { i32 }

@ATH_BCBUF = common dso_local global i32 0, align 4
@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"AP (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_beacon_config*)* @ath9k_beacon_config_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_ap(%struct.ath_softc* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %5, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %15 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @TU_TO_USEC(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @ATH_BCBUF, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %23 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %41 = load i32, i32* @BEACON, align 4
  %42 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %43 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %51 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ath_dbg(%struct.ath_common* %40, i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %48, i32 %49, i32 %52)
  %54 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ath9k_beacon_init(%struct.ath_softc* %54, i32 %55, i32 %56, i32 1)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath9k_beacon_init(%struct.ath_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
