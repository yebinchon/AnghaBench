; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@RT3290 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@BBP1_TX_POWER_CTRL = common dso_local global i32 0, align 4
@TX_PWR_CFG_0 = common dso_local global i64 0, align 8
@EEPROM_TXPOWER_BYRATE_SIZE = common dso_local global i32 0, align 4
@TX_PWR_CFG_4 = common dso_local global i64 0, align 8
@EEPROM_TXPOWER_BYRATE = common dso_local global i64 0, align 8
@EEPROM_TXPOWER_BYRATE_RATE0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE0 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE4 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE5 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE6 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32)* @rt2800_config_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_txpower(%struct.rt2x00_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %21 = load i32, i32* %16, align 4
  %22 = call i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = call i64 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev* %23)
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rt2800_get_txpower_reg_delta(%struct.rt2x00_dev* %29, i32 %30, i32 %33)
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = load i32, i32* @RT3290, align 4
  %41 = call i32 @rt2x00_rt(%struct.rt2x00_dev* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %3
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load i32, i32* @RT5390, align 4
  %46 = call i32 @rt2x00_rt(%struct.rt2x00_dev* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %43
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %49, i32 1, i32* %8)
  %51 = load i32, i32* %14, align 4
  %52 = icmp sle i32 %51, -12
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  store i32 2, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 12
  store i32 %55, i32* %14, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %57, -6
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  store i32 1, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 6
  store i32 %61, i32* %14, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* @BBP1_TX_POWER_CTRL, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @rt2x00_set_field8(i32* %8, i32 %65, i32 %66)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %68, i32 1, i32 %69)
  br label %71

71:                                               ; preds = %64, %43, %3
  %72 = load i64, i64* @TX_PWR_CFG_0, align 8
  store i64 %72, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %213, %71
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @EEPROM_TXPOWER_BYRATE_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %216

77:                                               ; preds = %73
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @TX_PWR_CFG_4, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %216

82:                                               ; preds = %77
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %83, i64 %84, i64* %10)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %87 = load i64, i64* @EEPROM_TXPOWER_BYRATE, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %86, i64 %90, i32* %9)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 0, i32 1
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %98 = call i32 @rt2x00_get_field16(i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @TX_PWR_CFG_RATE0, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @rt2x00_set_field32(i64* %10, i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %111 = call i32 @rt2x00_get_field16(i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @TX_PWR_CFG_RATE1, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @rt2x00_set_field32(i64* %10, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %124 = call i32 @rt2x00_get_field16(i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* @TX_PWR_CFG_RATE2, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @rt2x00_set_field32(i64* %10, i32 %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %137 = call i32 @rt2x00_get_field16(i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @TX_PWR_CFG_RATE3, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @rt2x00_set_field32(i64* %10, i32 %145, i32 %146)
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %149 = load i64, i64* @EEPROM_TXPOWER_BYRATE, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = add nsw i64 %152, 1
  %154 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %148, i64 %153, i32* %9)
  store i32 0, i32* %13, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %157 = call i32 @rt2x00_get_field16(i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @TX_PWR_CFG_RATE4, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @rt2x00_set_field32(i64* %10, i32 %165, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %170 = call i32 @rt2x00_get_field16(i32 %168, i32 %169)
  store i32 %170, i32* %7, align 4
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* @TX_PWR_CFG_RATE5, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @rt2x00_set_field32(i64* %10, i32 %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %183 = call i32 @rt2x00_get_field16(i32 %181, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* @TX_PWR_CFG_RATE6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @rt2x00_set_field32(i64* %10, i32 %191, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %196 = call i32 @rt2x00_get_field16(i32 %194, i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* @TX_PWR_CFG_RATE7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @rt2x00_set_field32(i64* %10, i32 %204, i32 %205)
  %207 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %207, i64 %208, i64 %209)
  %211 = load i64, i64* %11, align 8
  %212 = add nsw i64 %211, 4
  store i64 %212, i64* %11, align 8
  br label %213

213:                                              ; preds = %82
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 2
  store i32 %215, i32* %12, align 4
  br label %73

216:                                              ; preds = %81, %73
  ret void
}

declare dso_local i32 @rt2800_get_txpower_bw_comp(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_get_txpower_reg_delta(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i64, i64*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i64, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_compensate_txpower(%struct.rt2x00_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
