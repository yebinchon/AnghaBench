; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cmos_rtc = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS_ALARM = common dso_local global i64 0, align 8
@RTC_MINUTES_ALARM = common dso_local global i64 0, align 8
@RTC_HOURS_ALARM = common dso_local global i64 0, align 8
@RTC_CONTROL = common dso_local global i64 0, align 8
@RTC_AIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cmos_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.cmos_rtc* %9, %struct.cmos_rtc** %6, align 8
  %10 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %11 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_valid_irq(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %216

18:                                               ; preds = %2
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %26 = load i64, i64* @RTC_SECONDS_ALARM, align 8
  %27 = call i32 @CMOS_READ(i64 %26)
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i64, i64* @RTC_MINUTES_ALARM, align 8
  %32 = call i32 @CMOS_READ(i64 %31)
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* @RTC_HOURS_ALARM, align 8
  %37 = call i32 @CMOS_READ(i64 %36)
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %42 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %18
  %46 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @CMOS_READ(i64 %48)
  %50 = and i32 %49, 63
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %45
  %64 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %65 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %70 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @CMOS_READ(i64 %71)
  %73 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %68
  %82 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 -1, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %68
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %18
  %88 = load i64, i64* @RTC_CONTROL, align 8
  %89 = call i32 @CMOS_READ(i64 %88)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %7, align 1
  %91 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %92 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %93 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %95, 96
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bcd2bin(i32 %101)
  %103 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  br label %110

106:                                              ; preds = %87
  %107 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32 -1, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %97
  %111 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ult i32 %114, 96
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %118 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bcd2bin(i32 %120)
  %122 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %123 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  br label %129

125:                                              ; preds = %110
  %126 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i32 -1, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %116
  %130 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %133, 36
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bcd2bin(i32 %139)
  %141 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %142 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  br label %148

144:                                              ; preds = %129
  %145 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %146 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  store i32 -1, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %135
  %149 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %150 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %148
  %154 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %155 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ule i32 %157, 49
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %161 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bcd2bin(i32 %163)
  %165 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %166 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  br label %172

168:                                              ; preds = %153
  %169 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %170 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 -1, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %159
  %173 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %174 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %172
  %178 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %179 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ule i32 %181, 18
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %185 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bcd2bin(i32 %187)
  %189 = sub nsw i32 %188, 1
  %190 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %191 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  br label %197

193:                                              ; preds = %177
  %194 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %195 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  store i32 -1, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %183
  br label %198

198:                                              ; preds = %197, %172
  br label %199

199:                                              ; preds = %198, %148
  %200 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %201 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  store i32 -1, i32* %202, align 4
  %203 = load i8, i8* %7, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @RTC_AIE, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %213 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %215 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %199, %15
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_valid_irq(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CMOS_READ(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
