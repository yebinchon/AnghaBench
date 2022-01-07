; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_adhoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i64, i32 }
%struct.ath_common = type { i32 }

@FUDGE = common dso_local global i32 0, align 4
@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@SC_OP_BEACONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_beacon_config*)* @ath9k_beacon_config_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_adhoc(%struct.ath_softc* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  store %struct.ath_hw* %15, %struct.ath_hw** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %6, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = call i32 @ath9k_reset_beacon_status(%struct.ath_softc* %18)
  %20 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %21 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @TU_TO_USEC(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %25 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %8, align 4
  br label %58

30:                                               ; preds = %2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %32 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = ashr i32 %33, 32
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @TSF_TO_TU(i32 %34, i32 %35)
  %37 = load i32, i32* @FUDGE, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %41 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %51 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %30
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @TU_TO_USEC(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %28
  %59 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %60 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %76

69:                                               ; preds = %58
  %70 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %73 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %78 = load i32, i32* @BEACON, align 4
  %79 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %80 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %88 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ath_dbg(%struct.ath_common* %77, i32 %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %84, i32 %85, i32 %86, i32 %89)
  %91 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %95 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ath9k_beacon_init(%struct.ath_softc* %91, i32 %92, i32 %93, i32 %96)
  %98 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %99 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %76
  %103 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %104 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @SC_OP_BEACONS, align 4
  %109 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %109, i32 0, i32 0
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %107, %102, %76
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_reset_beacon_status(%struct.ath_softc*) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @TSF_TO_TU(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath9k_beacon_init(%struct.ath_softc*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
