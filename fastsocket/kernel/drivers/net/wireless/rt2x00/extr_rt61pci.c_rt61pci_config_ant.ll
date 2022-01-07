; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_ant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antenna_sel = type { i32*, i32 }
%struct.rt2x00_dev = type { i64, i32 }
%struct.antenna_setup = type { i64, i64 }

@ANTENNA_SW_DIVERSITY = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@antenna_sel_a = common dso_local global %struct.antenna_sel* null, align 8
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@antenna_sel_bg = common dso_local global %struct.antenna_sel* null, align 8
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@PHY_CSR0 = common dso_local global i32 0, align 4
@PHY_CSR0_PA_PE_BG = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@PHY_CSR0_PA_PE_A = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF5325 = common dso_local global i32 0, align 4
@RF2527 = common dso_local global i32 0, align 4
@RF2529 = common dso_local global i32 0, align 4
@CAPABILITY_DOUBLE_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt61pci_config_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca %struct.antenna_sel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %9 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %10 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %16 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_a, align 8
  store %struct.antenna_sel* %30, %struct.antenna_sel** %5, align 8
  %31 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 1
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %20
  %36 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_bg, align 8
  store %struct.antenna_sel* %36, %struct.antenna_sel** %5, align 8
  %37 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %29
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.antenna_sel*, %struct.antenna_sel** @antenna_sel_a, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.antenna_sel* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = load %struct.antenna_sel*, %struct.antenna_sel** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %49, i64 %51
  %53 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.antenna_sel*, %struct.antenna_sel** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %55, i64 %57
  %59 = getelementptr inbounds %struct.antenna_sel, %struct.antenna_sel* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %48, i32 %54, i32 %64)
  br label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %42

69:                                               ; preds = %42
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = load i32, i32* @PHY_CSR0, align 4
  %72 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %70, i32 %71, i32* %8)
  %73 = load i32, i32* @PHY_CSR0_PA_PE_BG, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @rt2x00_set_field32(i32* %8, i32 %73, i32 %79)
  %81 = load i32, i32* @PHY_CSR0_PA_PE_A, align 4
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @rt2x00_set_field32(i32* %8, i32 %81, i32 %87)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %90 = load i32, i32* @PHY_CSR0, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = load i32, i32* @RF5225, align 4
  %95 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %69
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = load i32, i32* @RF5325, align 4
  %100 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97, %69
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %105 = call i32 @rt61pci_config_antenna_5x(%struct.rt2x00_dev* %103, %struct.antenna_setup* %104)
  br label %137

106:                                              ; preds = %97
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %108 = load i32, i32* @RF2527, align 4
  %109 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %114 = call i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %112, %struct.antenna_setup* %113)
  br label %136

115:                                              ; preds = %106
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %117 = load i32, i32* @RF2529, align 4
  %118 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load i32, i32* @CAPABILITY_DOUBLE_ANTENNA, align 4
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %123 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %122, i32 0, i32 1
  %124 = call i32 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %129 = call i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev* %127, %struct.antenna_setup* %128)
  br label %134

130:                                              ; preds = %120
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %132 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %133 = call i32 @rt61pci_config_antenna_2529(%struct.rt2x00_dev* %131, %struct.antenna_setup* %132)
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %115
  br label %136

136:                                              ; preds = %135, %111
  br label %137

137:                                              ; preds = %136, %102
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.antenna_sel*) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt61pci_config_antenna_5x(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

declare dso_local i32 @rt61pci_config_antenna_2x(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

declare dso_local i32 @rt61pci_config_antenna_2529(%struct.rt2x00_dev*, %struct.antenna_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
