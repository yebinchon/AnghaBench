; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fm3130 = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"write alarm\00", align 1
@FM3130_ALARM_SECONDS = common dso_local global i64 0, align 8
@FM3130_ALARM_MINUTES = common dso_local global i64 0, align 8
@FM3130_ALARM_HOURS = common dso_local global i64 0, align 8
@FM3130_ALARM_DATE = common dso_local global i64 0, align 8
@FM3130_ALARM_MONTHS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"alarm write %02x %02x %02x %02x %02x\0A\00", align 1
@FM3130_ALARM_REGS = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL = common dso_local global i64 0, align 8
@FM3130_RTC_CONTROL_BIT_AF = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_CAL = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @fm3130_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.fm3130*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %8)
  store %struct.fm3130* %9, %struct.fm3130** %5, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  store %struct.rtc_time* %11, %struct.rtc_time** %6, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = or i32 %43, 128
  %45 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %46 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %2
  %51 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = or i32 %59, 128
  %61 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %62 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bin2bcd(i32 %74)
  %76 = or i32 %75, 128
  %77 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %78 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bin2bcd(i32 %90)
  %92 = or i32 %91, 128
  %93 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %94 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %82
  %99 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i32 @bin2bcd(i32 %107)
  %109 = or i32 %108, 128
  %110 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %111 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %98
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %118 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %124 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @FM3130_ALARM_MINUTES, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %130 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @FM3130_ALARM_HOURS, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %136 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @FM3130_ALARM_DATE, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %142 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @FM3130_ALARM_MONTHS, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %128, i32 %134, i32 %140, i32 %146)
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %170, %115
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @FM3130_ALARM_REGS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %154 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %156, %158
  %160 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %161 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %163, %165
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @i2c_smbus_write_byte_data(i32 %155, i64 %159, i32 %168)
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %175 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %178 = call i32 @i2c_smbus_read_byte_data(i32 %176, i64 %177)
  %179 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %180 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 %178, i32* %183, align 4
  %184 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %185 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @FM3130_RTC_CONTROL_BIT_AF, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %173
  %194 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %195 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %194, i32 0, i32 1
  store i32 1, i32* %195, align 8
  %196 = load i32, i32* @FM3130_RTC_CONTROL_BIT_AF, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %199 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, %197
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %193, %173
  %206 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %207 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  %211 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %212 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %215 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %216 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @FM3130_RTC_CONTROL_BIT_CAL, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = load i32, i32* @FM3130_RTC_CONTROL_BIT_AEN, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @i2c_smbus_write_byte_data(i32 %213, i64 %214, i32 %225)
  br label %242

227:                                              ; preds = %205
  %228 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %229 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %232 = load %struct.fm3130*, %struct.fm3130** %5, align 8
  %233 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @FM3130_RTC_CONTROL_BIT_AEN, align 4
  %239 = xor i32 %238, -1
  %240 = and i32 %237, %239
  %241 = call i32 @i2c_smbus_write_byte_data(i32 %230, i64 %231, i32 %240)
  br label %242

242:                                              ; preds = %227, %210
  ret i32 0
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
