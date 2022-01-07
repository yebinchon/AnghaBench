; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_get_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1307 = type { i32 (i32, i32, i32, i32*)*, i32*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@DS1307_REG_SECS = common dso_local global i64 0, align 8
@DS1307_REG_MIN = common dso_local global i64 0, align 8
@DS1307_REG_HOUR = common dso_local global i64 0, align 8
@DS1307_REG_WDAY = common dso_local global i64 0, align 8
@DS1307_REG_MDAY = common dso_local global i64 0, align 8
@DS1307_REG_MONTH = common dso_local global i64 0, align 8
@DS1307_REG_YEAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1307_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1307* %9, %struct.ds1307** %6, align 8
  %10 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %11 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %10, i32 0, i32 0
  %12 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %11, align 8
  %13 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %14 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %17 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %20 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 %12(i32 %15, i32 %18, i32 7, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 7
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %175

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %34 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %39 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %44 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %49 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %54 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %59 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %64 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42, i32 %47, i32 %52, i32 %57, i32 %62, i32 %67)
  %69 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %70 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @DS1307_REG_SECS, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 127
  %76 = call i8* @bcd2bin(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %81 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @DS1307_REG_MIN, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 127
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %92 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @DS1307_REG_HOUR, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 63
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i8* @bcd2bin(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %104 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @DS1307_REG_WDAY, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 7
  %110 = call i8* @bcd2bin(i32 %109)
  %111 = getelementptr i8, i8* %110, i64 -1
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %116 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @DS1307_REG_MDAY, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 63
  %122 = call i8* @bcd2bin(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %127 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @DS1307_REG_MONTH, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 31
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i8* @bcd2bin(i32 %133)
  %135 = getelementptr i8, i8* %134, i64 -1
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %140 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @DS1307_REG_YEAR, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @bcd2bin(i32 %144)
  %146 = getelementptr i8, i8* %145, i64 100
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %149 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %152 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %155 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %158 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %161 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %164 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %167 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %170 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_dbg(%struct.device* %150, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %156, i32 %159, i32 %162, i32 %165, i32 %168, i32 %171)
  %173 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %174 = call i32 @rtc_valid_tm(%struct.rtc_time* %173)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %31, %25
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
