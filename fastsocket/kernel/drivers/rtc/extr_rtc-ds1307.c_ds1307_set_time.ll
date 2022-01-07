; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1307 = type { i32*, i32, i32 (i32, i32, i32, i32*)*, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@DS1307_REG_SECS = common dso_local global i64 0, align 8
@DS1307_REG_MIN = common dso_local global i64 0, align 8
@DS1307_REG_HOUR = common dso_local global i64 0, align 8
@DS1307_REG_WDAY = common dso_local global i64 0, align 8
@DS1307_REG_MDAY = common dso_local global i64 0, align 8
@DS1307_REG_MONTH = common dso_local global i64 0, align 8
@DS1307_REG_YEAR = common dso_local global i64 0, align 8
@DS1337_BIT_CENTURY = common dso_local global i32 0, align 4
@DS1340_BIT_CENTURY_EN = common dso_local global i32 0, align 4
@DS1340_BIT_CENTURY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1307_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %10)
  store %struct.ds1307* %11, %struct.ds1307** %6, align 8
  %12 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %13 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bin2bcd(i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* @DS1307_REG_SECS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* @DS1307_REG_MIN, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* @DS1307_REG_HOUR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @bin2bcd(i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* @DS1307_REG_WDAY, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bin2bcd(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* @DS1307_REG_MDAY, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @bin2bcd(i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* @DS1307_REG_MONTH, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 100
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @bin2bcd(i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* @DS1307_REG_YEAR, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %92 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %110 [
    i32 131, label %94
    i32 130, label %94
    i32 128, label %94
    i32 129, label %101
  ]

94:                                               ; preds = %2, %2, %2
  %95 = load i32, i32* @DS1337_BIT_CENTURY, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* @DS1307_REG_MONTH, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %111

101:                                              ; preds = %2
  %102 = load i32, i32* @DS1340_BIT_CENTURY_EN, align 4
  %103 = load i32, i32* @DS1340_BIT_CENTURY, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* @DS1307_REG_HOUR, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %111

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %110, %101, %94
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %136 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %135, i32 0, i32 2
  %137 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %136, align 8
  %138 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %139 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %142 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 %137(i32 %140, i32 %143, i32 7, i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %111
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %3, align 4
  br label %154

153:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %148
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
