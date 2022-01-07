; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_set_rts_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_set_rts_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@IEEE80211_MAX_RTS_THRESHOLD = common dso_local global i64 0, align 8
@TX_RTS_CFG = common dso_local global i32 0, align 4
@TX_RTS_CFG_RTS_THRES = common dso_local global i32 0, align 4
@CCK_PROT_CFG = common dso_local global i32 0, align 4
@CCK_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4
@OFDM_PROT_CFG = common dso_local global i32 0, align 4
@OFDM_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4
@MM20_PROT_CFG = common dso_local global i32 0, align 4
@MM20_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4
@MM40_PROT_CFG = common dso_local global i32 0, align 4
@MM40_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4
@GF20_PROT_CFG = common dso_local global i32 0, align 4
@GF20_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4
@GF40_PROT_CFG = common dso_local global i32 0, align 4
@GF40_PROT_CFG_RTS_TH_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_set_rts_threshold(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @IEEE80211_MAX_RTS_THRESHOLD, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @TX_RTS_CFG, align 4
  %17 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %15, i32 %16, i64* %6)
  %18 = load i32, i32* @TX_RTS_CFG_RTS_THRES, align 4
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @rt2x00_set_field32(i64* %6, i32 %18, i32 %20)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = load i32, i32* @TX_RTS_CFG, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %22, i32 %23, i64 %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %27 = load i32, i32* @CCK_PROT_CFG, align 4
  %28 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %26, i32 %27, i64* %6)
  %29 = load i32, i32* @CCK_PROT_CFG_RTS_TH_EN, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @rt2x00_set_field32(i64* %6, i32 %29, i32 %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @CCK_PROT_CFG, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %32, i32 %33, i64 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load i32, i32* @OFDM_PROT_CFG, align 4
  %38 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %36, i32 %37, i64* %6)
  %39 = load i32, i32* @OFDM_PROT_CFG_RTS_TH_EN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rt2x00_set_field32(i64* %6, i32 %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %43 = load i32, i32* @OFDM_PROT_CFG, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %42, i32 %43, i64 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = load i32, i32* @MM20_PROT_CFG, align 4
  %48 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %46, i32 %47, i64* %6)
  %49 = load i32, i32* @MM20_PROT_CFG_RTS_TH_EN, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rt2x00_set_field32(i64* %6, i32 %49, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = load i32, i32* @MM20_PROT_CFG, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %52, i32 %53, i64 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %57 = load i32, i32* @MM40_PROT_CFG, align 4
  %58 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %56, i32 %57, i64* %6)
  %59 = load i32, i32* @MM40_PROT_CFG_RTS_TH_EN, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @rt2x00_set_field32(i64* %6, i32 %59, i32 %60)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %63 = load i32, i32* @MM40_PROT_CFG, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %62, i32 %63, i64 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = load i32, i32* @GF20_PROT_CFG, align 4
  %68 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %66, i32 %67, i64* %6)
  %69 = load i32, i32* @GF20_PROT_CFG_RTS_TH_EN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @rt2x00_set_field32(i64* %6, i32 %69, i32 %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %73 = load i32, i32* @GF20_PROT_CFG, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %72, i32 %73, i64 %74)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %77 = load i32, i32* @GF40_PROT_CFG, align 4
  %78 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %76, i32 %77, i64* %6)
  %79 = load i32, i32* @GF40_PROT_CFG_RTS_TH_EN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @rt2x00_set_field32(i64* %6, i32 %79, i32 %80)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %83 = load i32, i32* @GF40_PROT_CFG, align 4
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %82, i32 %83, i64 %84)
  ret i32 0
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i64*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
