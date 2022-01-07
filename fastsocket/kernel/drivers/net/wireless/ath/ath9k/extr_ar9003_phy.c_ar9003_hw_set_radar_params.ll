; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_radar_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_radar_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_radar_conf = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAX_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_BLOCK_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAXLEN = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_hw_radar_conf*)* @ar9003_hw_set_radar_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_set_radar_params(%struct.ath_hw* %0, %struct.ath_hw_radar_conf* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_radar_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_hw_radar_conf* %1, %struct.ath_hw_radar_conf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %8 = icmp ne %struct.ath_hw_radar_conf* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %12 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %13 = call i32 @REG_CLR_BIT(%struct.ath_hw* %10, i32 %11, i32 %12)
  br label %104

14:                                               ; preds = %2
  %15 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %16 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %21 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %24 = call i32 @SM(i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %31 = call i32 @SM(i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %35 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %38 = call i32 @SM(i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %45 = call i32 @SM(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %49 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %52 = call i32 @SM(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @AR_PHY_RADAR_1_MAX_RRSSI, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @AR_PHY_RADAR_1_BLOCK_CHECK, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %62 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %65 = call i32 @SM(i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %69 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %72 = call i32 @SM(i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %76 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %79 = call i32 @SM(i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @REG_WRITE(%struct.ath_hw* %82, i32 %83, i32 %84)
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @REG_WRITE(%struct.ath_hw* %86, i32 %87, i32 %88)
  %90 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %4, align 8
  %91 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %14
  %95 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %96 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %97 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %98 = call i32 @REG_SET_BIT(%struct.ath_hw* %95, i32 %96, i32 %97)
  br label %104

99:                                               ; preds = %14
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %102 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %103 = call i32 @REG_CLR_BIT(%struct.ath_hw* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %9, %99, %94
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
