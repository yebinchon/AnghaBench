; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_IQ_GAIN_CAL_TX0_2G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX0_CH36_TO_CH64_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX0_CH100_TO_CH138_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX0_CH140_TO_CH165_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX0_2G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX0_CH36_TO_CH64_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX0_CH100_TO_CH138_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX0_CH140_TO_CH165_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX1_2G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX1_CH36_TO_CH64_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX1_CH100_TO_CH138_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_GAIN_CAL_TX1_CH140_TO_CH165_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX1_2G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX1_CH36_TO_CH64_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX1_CH100_TO_CH138_5G = common dso_local global i32 0, align 4
@EEPROM_IQ_PHASE_CAL_TX1_CH140_TO_CH165_5G = common dso_local global i32 0, align 4
@EEPROM_RF_IQ_COMPENSATION_CONTROL = common dso_local global i32 0, align 4
@EEPROM_RF_IQ_IMBALANCE_COMPENSATION_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2800_iq_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_iq_calibrate(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %6, i32 158, i32 44)
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 14
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX0_2G, align 4
  %13 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 36
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 64
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX0_CH36_TO_CH64_5G, align 4
  %23 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 100
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 138
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX0_CH100_TO_CH138_5G, align 4
  %33 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 140
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 165
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX0_CH140_TO_CH165_5G, align 4
  %43 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %37, %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %40
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %10
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %49, i32 159, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 158, i32 45)
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 14
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX0_2G, align 4
  %59 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %94

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 36
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp sle i32 %64, 64
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX0_CH36_TO_CH64_5G, align 4
  %69 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %93

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %4, align 4
  %72 = icmp sge i32 %71, 100
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp sle i32 %74, 138
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX0_CH100_TO_CH138_5G, align 4
  %79 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %92

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %4, align 4
  %82 = icmp sge i32 %81, 140
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 165
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX0_CH140_TO_CH165_5G, align 4
  %89 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %91

90:                                               ; preds = %83, %80
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %95, i32 159, i32 %96)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %98, i32 158, i32 74)
  %100 = load i32, i32* %4, align 4
  %101 = icmp sle i32 %100, 14
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX1_2G, align 4
  %105 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %140

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = icmp sge i32 %107, 36
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = icmp sle i32 %110, 64
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX1_CH36_TO_CH64_5G, align 4
  %115 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %139

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %4, align 4
  %118 = icmp sge i32 %117, 100
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = icmp sle i32 %120, 138
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX1_CH100_TO_CH138_5G, align 4
  %125 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  br label %138

126:                                              ; preds = %119, %116
  %127 = load i32, i32* %4, align 4
  %128 = icmp sge i32 %127, 140
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = icmp sle i32 %130, 165
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = load i32, i32* @EEPROM_IQ_GAIN_CAL_TX1_CH140_TO_CH165_5G, align 4
  %135 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %133, i32 %134)
  store i32 %135, i32* %5, align 4
  br label %137

136:                                              ; preds = %129, %126
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %132
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138, %112
  br label %140

140:                                              ; preds = %139, %102
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %141, i32 159, i32 %142)
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %145 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %144, i32 158, i32 75)
  %146 = load i32, i32* %4, align 4
  %147 = icmp sle i32 %146, 14
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %150 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX1_2G, align 4
  %151 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %149, i32 %150)
  store i32 %151, i32* %5, align 4
  br label %186

152:                                              ; preds = %140
  %153 = load i32, i32* %4, align 4
  %154 = icmp sge i32 %153, 36
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32, i32* %4, align 4
  %157 = icmp sle i32 %156, 64
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %160 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX1_CH36_TO_CH64_5G, align 4
  %161 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %159, i32 %160)
  store i32 %161, i32* %5, align 4
  br label %185

162:                                              ; preds = %155, %152
  %163 = load i32, i32* %4, align 4
  %164 = icmp sge i32 %163, 100
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32, i32* %4, align 4
  %167 = icmp sle i32 %166, 138
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %170 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX1_CH100_TO_CH138_5G, align 4
  %171 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %169, i32 %170)
  store i32 %171, i32* %5, align 4
  br label %184

172:                                              ; preds = %165, %162
  %173 = load i32, i32* %4, align 4
  %174 = icmp sge i32 %173, 140
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %4, align 4
  %177 = icmp sle i32 %176, 165
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %180 = load i32, i32* @EEPROM_IQ_PHASE_CAL_TX1_CH140_TO_CH165_5G, align 4
  %181 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %179, i32 %180)
  store i32 %181, i32* %5, align 4
  br label %183

182:                                              ; preds = %175, %172
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %178
  br label %184

184:                                              ; preds = %183, %168
  br label %185

185:                                              ; preds = %184, %158
  br label %186

186:                                              ; preds = %185, %148
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %187, i32 159, i32 %188)
  %190 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %191 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %190, i32 158, i32 4)
  %192 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %193 = load i32, i32* @EEPROM_RF_IQ_COMPENSATION_CONTROL, align 4
  %194 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %192, i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 255
  br i1 %197, label %198, label %200

198:                                              ; preds = %186
  %199 = load i32, i32* %5, align 4
  br label %201

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 0, %200 ]
  %203 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %195, i32 159, i32 %202)
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %205 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %204, i32 158, i32 3)
  %206 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %207 = load i32, i32* @EEPROM_RF_IQ_IMBALANCE_COMPENSATION_CONTROL, align 4
  %208 = call i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev* %206, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 255
  br i1 %211, label %212, label %214

212:                                              ; preds = %201
  %213 = load i32, i32* %5, align 4
  br label %215

214:                                              ; preds = %201
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ]
  %217 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %209, i32 159, i32 %216)
  ret void
}

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_byte(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
