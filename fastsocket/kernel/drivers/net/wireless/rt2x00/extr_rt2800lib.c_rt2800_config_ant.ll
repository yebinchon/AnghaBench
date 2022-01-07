; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@RT3572 = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@BBP1_TX_ANTENNA = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@BBP3_RX_ANTENNA = common dso_local global i32 0, align 4
@BBP3_RX_ADC = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_ant(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %8, i32 1, i32* %5)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %10, i32 3, i32* %6)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @RT3572, align 4
  %14 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = call i32 @rt2800_config_3572bt_ant(%struct.rt2x00_dev* %23)
  br label %25

25:                                               ; preds = %22, %16, %2
  %26 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %27 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 1, label %29
    i32 2, label %32
    i32 3, label %50
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %31 = call i32 @rt2x00_set_field8(i32* %5, i32 %30, i32 0)
  br label %53

32:                                               ; preds = %25
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* @RT3572, align 4
  %35 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %45 = call i32 @rt2x00_set_field8(i32* %5, i32 %44, i32 1)
  br label %49

46:                                               ; preds = %37, %32
  %47 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %5, i32 %47, i32 2)
  br label %49

49:                                               ; preds = %46, %43
  br label %53

50:                                               ; preds = %25
  %51 = load i32, i32* @BBP1_TX_ANTENNA, align 4
  %52 = call i32 @rt2x00_set_field8(i32* %5, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %25, %50, %49, %29
  %54 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %55 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %128 [
    i32 1, label %57
    i32 2, label %96
    i32 3, label %125
  ]

57:                                               ; preds = %53
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @RT3070, align 4
  %60 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = load i32, i32* @RT3090, align 4
  %65 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = load i32, i32* @RT3352, align 4
  %70 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = load i32, i32* @RT3390, align 4
  %75 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72, %67, %62, %57
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %80 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %78, i32 %79, i32* %7)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %83 = call i32 @rt2x00_get_field16(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev* %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %77
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %95 = call i32 @rt2x00_set_field8(i32* %6, i32 %94, i32 0)
  br label %128

96:                                               ; preds = %53
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = load i32, i32* @RT3572, align 4
  %99 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %103, i32 0, i32 1
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load i32, i32* @BBP3_RX_ADC, align 4
  %109 = call i32 @rt2x00_set_field8(i32* %6, i32 %108, i32 1)
  %110 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @rt2x00_set_field8(i32* %6, i32 %110, i32 %116)
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %119 = load i32, i32* @ANTENNA_B, align 4
  %120 = call i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev* %118, i32 %119)
  br label %124

121:                                              ; preds = %101, %96
  %122 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %123 = call i32 @rt2x00_set_field8(i32* %6, i32 %122, i32 1)
  br label %124

124:                                              ; preds = %121, %107
  br label %128

125:                                              ; preds = %53
  %126 = load i32, i32* @BBP3_RX_ANTENNA, align 4
  %127 = call i32 @rt2x00_set_field8(i32* %6, i32 %126, i32 2)
  br label %128

128:                                              ; preds = %53, %125, %124, %93
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %129, i32 3, i32 %130)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %132, i32 1, i32 %133)
  ret void
}

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_config_3572bt_ant(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_set_ant_diversity(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
