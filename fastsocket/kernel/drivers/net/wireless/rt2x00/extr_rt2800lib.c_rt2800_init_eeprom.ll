; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }

@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@RT3290 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@EEPROM_CHIP_ID = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RF_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid RF chipset 0x%04x detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i8* null, align 8
@ANTENNA_B = common dso_local global i8* null, align 8
@REV_RT5390R = common dso_local global i32 0, align 4
@ANTENNA_HW_DIVERSITY = common dso_local global i8* null, align 8
@EEPROM_NIC_CONF1_EXTERNAL_LNA_5G = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_2G = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_HW_RADIO = common dso_local global i32 0, align 4
@CAPABILITY_HW_BUTTON = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BT_COEXIST = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_EIRP_MAX_TX_POWER = common dso_local global i32 0, align 4
@EEPROM_EIRP_MAX_TX_POWER_2GHZ = common dso_local global i32 0, align 4
@EIRP_MAX_TX_POWER_LIMIT = common dso_local global i64 0, align 8
@CAPABILITY_POWER_LIMIT = common dso_local global i32 0, align 4
@LED_TYPE_ASSOC = common dso_local global i32 0, align 4
@LED_TYPE_QUALITY = common dso_local global i32 0, align 4
@LED_TYPE_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_init_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %9 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %7, i32 %8, i32* %5)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* @RT3290, align 4
  %12 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @RT5390, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = load i32, i32* @RT5392, align 4
  %22 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %14, %1
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @EEPROM_CHIP_ID, align 4
  %27 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %25, i32 %26, i32* %6)
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EEPROM_NIC_CONF0_RF_TYPE, align 4
  %31 = call i64 @rt2x00_get_field16(i32 %29, i32 %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %36 [
    i32 142, label %35
    i32 141, label %35
    i32 144, label %35
    i32 143, label %35
    i32 140, label %35
    i32 145, label %35
    i32 139, label %35
    i32 138, label %35
    i32 137, label %35
    i32 136, label %35
    i32 135, label %35
    i32 134, label %35
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  br label %42

36:                                               ; preds = %33
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rt2x00_err(%struct.rt2x00_dev* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %192

42:                                               ; preds = %35
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @rt2x00_set_rf(%struct.rt2x00_dev* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %48 = call i64 @rt2x00_get_field16(i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %54 = call i64 @rt2x00_get_field16(i32 %52, i32 %53)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %60 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %58, i32 %59, i32* %5)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = load i32, i32* @RT3070, align 4
  %63 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %42
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = load i32, i32* @RT3090, align 4
  %68 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @RT3352, align 4
  %73 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = load i32, i32* @RT3390, align 4
  %78 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %75, %70, %65, %42
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %83 = call i64 @rt2x00_get_field16(i32 %81, i32 %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  switch i32 %85, label %104 [
    i32 0, label %86
    i32 1, label %86
    i32 2, label %86
    i32 3, label %95
  ]

86:                                               ; preds = %80, %80, %80
  %87 = load i8*, i8** @ANTENNA_A, align 8
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %89 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @ANTENNA_A, align 8
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %104

95:                                               ; preds = %80
  %96 = load i8*, i8** @ANTENNA_A, align 8
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** @ANTENNA_B, align 8
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %80, %95, %86
  br label %114

105:                                              ; preds = %75
  %106 = load i8*, i8** @ANTENNA_A, align 8
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %108 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load i8*, i8** @ANTENNA_A, align 8
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  br label %114

114:                                              ; preds = %105, %104
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %116 = load i32, i32* @RT5390, align 4
  %117 = load i32, i32* @REV_RT5390R, align 4
  %118 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %115, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %123 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @ANTENNA_HW_DIVERSITY, align 8
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %127 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %120, %114
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, align 4
  %132 = call i64 @rt2x00_get_field16(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %136, i32 0, i32 1
  %138 = call i32 @__set_bit(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, align 4
  %142 = call i64 @rt2x00_get_field16(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %147 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %146, i32 0, i32 1
  %148 = call i32 @__set_bit(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @EEPROM_NIC_CONF1_HW_RADIO, align 4
  %152 = call i64 @rt2x00_get_field16(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* @CAPABILITY_HW_BUTTON, align 4
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %157 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %156, i32 0, i32 1
  %158 = call i32 @__set_bit(i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @EEPROM_NIC_CONF1_BT_COEXIST, align 4
  %162 = call i64 @rt2x00_get_field16(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %167 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %166, i32 0, i32 1
  %168 = call i32 @__set_bit(i32 %165, i32* %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %171 = load i32, i32* @EEPROM_FREQ, align 4
  %172 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %170, i32 %171, i32* %5)
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %175 = call i64 @rt2x00_get_field16(i32 %173, i32 %174)
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %177 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %176, i32 0, i32 5
  store i64 %175, i64* %177, align 8
  %178 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %179 = load i32, i32* @EEPROM_EIRP_MAX_TX_POWER, align 4
  %180 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %178, i32 %179, i32* %5)
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @EEPROM_EIRP_MAX_TX_POWER_2GHZ, align 4
  %183 = call i64 @rt2x00_get_field16(i32 %181, i32 %182)
  %184 = load i64, i64* @EIRP_MAX_TX_POWER_LIMIT, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %169
  %187 = load i32, i32* @CAPABILITY_POWER_LIMIT, align 4
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %189 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %188, i32 0, i32 1
  %190 = call i32 @__set_bit(i32 %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %169
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %36
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00_set_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
