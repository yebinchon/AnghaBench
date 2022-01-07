; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_get_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-fm3130.c_fm3130_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fm3130 = type { i32*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FM3130_MODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@FM3130_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x %02x%02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@FM3130_RTC_SECONDS = common dso_local global i64 0, align 8
@FM3130_RTC_MINUTES = common dso_local global i64 0, align 8
@FM3130_RTC_HOURS = common dso_local global i64 0, align 8
@FM3130_RTC_DAY = common dso_local global i64 0, align 8
@FM3130_RTC_DATE = common dso_local global i64 0, align 8
@FM3130_RTC_MONTHS = common dso_local global i64 0, align 8
@FM3130_RTC_YEARS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @fm3130_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.fm3130*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.fm3130* @dev_get_drvdata(%struct.device* %8)
  store %struct.fm3130* %9, %struct.fm3130** %6, align 8
  %10 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %11 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %227

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @FM3130_MODE_READ, align 4
  %20 = call i32 @fm3130_rtc_mode(%struct.device* %18, i32 %19)
  %21 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %22 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_i2c_adapter(i32 %26)
  %28 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %29 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @i2c_transfer(i32 %27, i32 %30, i32 2)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %227

40:                                               ; preds = %17
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @FM3130_MODE_NORMAL, align 4
  %43 = call i32 @fm3130_rtc_mode(%struct.device* %41, i32 %42)
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %46 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %51 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %56 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %61 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %66 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %71 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %76 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %81 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %86 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %91 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %96 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 10
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %101 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 11
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %106 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 12
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %111 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 13
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %116 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 14
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %84, i32 %89, i32 %94, i32 %99, i32 %104, i32 %109, i32 %114, i32 %119)
  %121 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %122 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 127
  %128 = call i8* @bcd2bin(i32 %127)
  %129 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %132 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @FM3130_RTC_MINUTES, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 127
  %138 = call i8* @bcd2bin(i32 %137)
  %139 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %140 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  %141 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %142 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @FM3130_RTC_HOURS, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 63
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i8* @bcd2bin(i32 %148)
  %150 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %153 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @FM3130_RTC_DAY, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 7
  %159 = call i8* @bcd2bin(i32 %158)
  %160 = getelementptr i8, i8* %159, i64 -1
  %161 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %162 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %164 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @FM3130_RTC_DATE, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 63
  %170 = call i8* @bcd2bin(i32 %169)
  %171 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %172 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %174 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @FM3130_RTC_MONTHS, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 31
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i8* @bcd2bin(i32 %180)
  %182 = getelementptr i8, i8* %181, i64 -1
  %183 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %184 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  %185 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %186 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @FM3130_RTC_YEARS, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @bcd2bin(i32 %190)
  %192 = getelementptr i8, i8* %191, i64 100
  %193 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %194 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %197 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %196, i32 0, i32 6
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %201 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %200, i32 0, i32 5
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %205 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %209 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %213 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %212, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %217 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %221 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %195, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %203, i32 %207, i32 %211, i32 %215, i32 %219, i32 %223)
  %225 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %226 = call i32 @rtc_valid_tm(%struct.rtc_time* %225)
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %40, %34, %14
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.fm3130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @fm3130_rtc_mode(%struct.device*, i32) #1

declare dso_local i32 @i2c_transfer(i32, i32, i32) #1

declare dso_local i32 @to_i2c_adapter(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
