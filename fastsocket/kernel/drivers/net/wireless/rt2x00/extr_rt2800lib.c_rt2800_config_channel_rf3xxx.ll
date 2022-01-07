; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__, %struct.rt2800_drv_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt2800_drv_data = type { i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32 }
%struct.channel_info = type { i32, i32 }

@RFCSR3_K = common dso_local global i32 0, align 4
@RFCSR6_R1 = common dso_local global i32 0, align 4
@RFCSR12_TX_POWER = common dso_local global i32 0, align 4
@RFCSR13_TX_POWER = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@RFCSR30_RF_CALIBRATION = common dso_local global i32 0, align 4
@RFCSR23_FREQ_OFFSET = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@RFCSR24_TX_CALIB = common dso_local global i32 0, align 4
@RFCSR31_RX_CALIB = common dso_local global i32 0, align 4
@RFCSR7_RF_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3xxx(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 2
  %15 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %14, align 8
  store %struct.rt2800_drv_data* %15, %struct.rt2800_drv_data** %9, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %18 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %16, i32 2, i32 %19)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %22 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %21, i32 3, i32* %10)
  %23 = load i32, i32* @RFCSR3_K, align 4
  %24 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %25 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rt2x00_set_field8(i32* %10, i32 %23, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 3, i32 %29)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %31, i32 6, i32* %10)
  %33 = load i32, i32* @RFCSR6_R1, align 4
  %34 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %35 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rt2x00_set_field8(i32* %10, i32 %33, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %38, i32 6, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %42 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %41, i32 12, i32* %10)
  %43 = load i32, i32* @RFCSR12_TX_POWER, align 4
  %44 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %45 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rt2x00_set_field8(i32* %10, i32 %43, i32 %46)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 12, i32 %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %51, i32 13, i32* %10)
  %53 = load i32, i32* @RFCSR13_TX_POWER, align 4
  %54 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %55 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rt2x00_set_field8(i32* %10, i32 %53, i32 %56)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %58, i32 13, i32 %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %61, i32 1, i32* %10)
  %63 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %64 = call i32 @rt2x00_set_field8(i32* %10, i32 %63, i32 0)
  %65 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @rt2x00_set_field8(i32* %10, i32 %65, i32 %71)
  %73 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %75 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %77, 2
  %79 = zext i1 %78 to i32
  %80 = call i32 @rt2x00_set_field8(i32* %10, i32 %73, i32 %79)
  %81 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %82 = call i32 @rt2x00_set_field8(i32* %10, i32 %81, i32 0)
  %83 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %85 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @rt2x00_set_field8(i32* %10, i32 %83, i32 %89)
  %91 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %95, 2
  %97 = zext i1 %96 to i32
  %98 = call i32 @rt2x00_set_field8(i32* %10, i32 %91, i32 %97)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %99, i32 1, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %103 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %102, i32 30, i32* %10)
  %104 = load i32, i32* @RFCSR30_RF_CALIBRATION, align 4
  %105 = call i32 @rt2x00_set_field8(i32* %10, i32 %104, i32 1)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %106, i32 30, i32 %107)
  %109 = call i32 @msleep(i32 1)
  %110 = load i32, i32* @RFCSR30_RF_CALIBRATION, align 4
  %111 = call i32 @rt2x00_set_field8(i32* %10, i32 %110, i32 0)
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %112, i32 30, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %116 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %115, i32 23, i32* %10)
  %117 = load i32, i32* @RFCSR23_FREQ_OFFSET, align 4
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %119 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @rt2x00_set_field8(i32* %10, i32 %117, i32 %120)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %122, i32 23, i32 %123)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %126 = load i32, i32* @RT3390, align 4
  %127 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %4
  %130 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %131 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %130)
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 104, i32 79
  store i32 %134, i32* %11, align 4
  %135 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %136 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %135)
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 111, i32 79
  store i32 %139, i32* %12, align 4
  br label %159

140:                                              ; preds = %4
  %141 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %142 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %146 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  %148 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %149 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %12, align 4
  br label %158

151:                                              ; preds = %140
  %152 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %153 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %11, align 4
  %155 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %156 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %151, %144
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %161 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %160, i32 24, i32* %10)
  %162 = load i32, i32* @RFCSR24_TX_CALIB, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @rt2x00_set_field8(i32* %10, i32 %162, i32 %163)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %165, i32 24, i32 %166)
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %169 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %168, i32 31, i32* %10)
  %170 = load i32, i32* @RFCSR31_RX_CALIB, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @rt2x00_set_field8(i32* %10, i32 %170, i32 %171)
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %173, i32 31, i32 %174)
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %177 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %176, i32 7, i32* %10)
  %178 = load i32, i32* @RFCSR7_RF_TUNING, align 4
  %179 = call i32 @rt2x00_set_field8(i32* %10, i32 %178, i32 1)
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %180, i32 7, i32 %181)
  %183 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %184 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %183, i32 30, i32* %10)
  %185 = load i32, i32* @RFCSR30_RF_CALIBRATION, align 4
  %186 = call i32 @rt2x00_set_field8(i32* %10, i32 %185, i32 1)
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %187, i32 30, i32 %188)
  %190 = call i32 @msleep(i32 1)
  %191 = load i32, i32* @RFCSR30_RF_CALIBRATION, align 4
  %192 = call i32 @rt2x00_set_field8(i32* %10, i32 %191, i32 0)
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %193, i32 30, i32 %194)
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
