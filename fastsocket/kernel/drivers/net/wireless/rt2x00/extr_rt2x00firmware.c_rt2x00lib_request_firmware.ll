; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00firmware.c_rt2x00lib_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00firmware.c_rt2x00lib_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.firmware*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.firmware = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* (%struct.rt2x00_dev*)*, i32 (%struct.rt2x00_dev*, i32*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Invalid firmware filename\0APlease file bug report to %s\0A\00", align 1
@DRV_PROJECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Loading firmware file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to request Firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to read Firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Firmware detected - version: %d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Firmware checksum error\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Invalid firmware file length (len=%zu)\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Current firmware does not support detected chipset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2x00lib_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00lib_request_firmware(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call %struct.device* @wiphy_dev(%struct.TYPE_8__* %12)
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8* (%struct.rt2x00_dev*)*, i8* (%struct.rt2x00_dev*)** %19, align 8
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = call i8* %20(%struct.rt2x00_dev* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @DRV_PROJECT, align 4
  %28 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %153

31:                                               ; preds = %1
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_info(%struct.rt2x00_dev* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @request_firmware(%struct.firmware** %5, i8* %35, %struct.device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %153

44:                                               ; preds = %31
  %45 = load %struct.firmware*, %struct.firmware** %5, align 8
  %46 = icmp ne %struct.firmware* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.firmware*, %struct.firmware** %5, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %47, %44
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.firmware*, %struct.firmware** %5, align 8
  %61 = call i32 @release_firmware(%struct.firmware* %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %153

64:                                               ; preds = %52
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = load %struct.firmware*, %struct.firmware** %5, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.firmware*, %struct.firmware** %5, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.firmware*, %struct.firmware** %5, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.firmware*, %struct.firmware** %5, align 8
  %80 = getelementptr inbounds %struct.firmware, %struct.firmware* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_info(%struct.rt2x00_dev* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %85)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.firmware*, %struct.firmware** %5, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.firmware*, %struct.firmware** %5, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.firmware*, %struct.firmware** %5, align 8
  %105 = getelementptr inbounds %struct.firmware, %struct.firmware* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.firmware*, %struct.firmware** %5, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snprintf(i32 %93, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %116 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32 (%struct.rt2x00_dev*, i32*, i32)*, i32 (%struct.rt2x00_dev*, i32*, i32)** %120, align 8
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %123 = load %struct.firmware*, %struct.firmware** %5, align 8
  %124 = getelementptr inbounds %struct.firmware, %struct.firmware* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.firmware*, %struct.firmware** %5, align 8
  %127 = getelementptr inbounds %struct.firmware, %struct.firmware* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 %121(%struct.rt2x00_dev* %122, i32* %125, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %144 [
    i32 128, label %131
    i32 131, label %132
    i32 130, label %135
    i32 129, label %141
  ]

131:                                              ; preds = %64
  br label %144

132:                                              ; preds = %64
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %148

135:                                              ; preds = %64
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = load %struct.firmware*, %struct.firmware** %5, align 8
  %138 = getelementptr inbounds %struct.firmware, %struct.firmware* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  br label %148

141:                                              ; preds = %64
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %143 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_err(%struct.rt2x00_dev* %142, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %148

144:                                              ; preds = %64, %131
  %145 = load %struct.firmware*, %struct.firmware** %5, align 8
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %147 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %146, i32 0, i32 0
  store %struct.firmware* %145, %struct.firmware** %147, align 8
  store i32 0, i32* %2, align 4
  br label %153

148:                                              ; preds = %141, %135, %132
  %149 = load %struct.firmware*, %struct.firmware** %5, align 8
  %150 = call i32 @release_firmware(%struct.firmware* %149)
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %148, %144, %57, %40, %25
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.device* @wiphy_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @rt2x00_info(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
