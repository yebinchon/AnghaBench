; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@POWER_ON = common dso_local global i32 0, align 4
@POWER_OFF = common dso_local global i32 0, align 4
@DEFAULT_RDS_PI = common dso_local global i32 0, align 4
@DEFAULT_RDS_PTY = common dso_local global i32 0, align 4
@DEFAULT_RDS_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_RDS_PS_NAME = common dso_local global i32 0, align 4
@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@DEFAULT_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_RTIME = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_DEV = common dso_local global i32 0, align 4
@DEFAULT_PILOT_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_RTIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_ATIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_GAIN = common dso_local global i32 0, align 4
@DEFAULT_FREQUENCY = common dso_local global i32 0, align 4
@DEFAULT_PREEMPHASIS = common dso_local global i32 0, align 4
@DEFAULT_MUTE = common dso_local global i32 0, align 4
@DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@DEFAULT_TUNE_RNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_initialize(%struct.si4713_device* %0) #0 {
  %2 = alloca %struct.si4713_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %2, align 8
  %4 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %5 = load i32, i32* @POWER_ON, align 4
  %6 = call i32 @si4713_set_power_state(%struct.si4713_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %119

10:                                               ; preds = %1
  %11 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %12 = call i32 @si4713_checkrev(%struct.si4713_device* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %119

16:                                               ; preds = %10
  %17 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %18 = load i32, i32* @POWER_OFF, align 4
  %19 = call i32 @si4713_set_power_state(%struct.si4713_device* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %119

23:                                               ; preds = %16
  %24 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %25 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @DEFAULT_RDS_PI, align 4
  %28 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %29 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @DEFAULT_RDS_PTY, align 4
  %32 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %33 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @DEFAULT_RDS_DEVIATION, align 4
  %36 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %37 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %40 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DEFAULT_RDS_PS_NAME, align 4
  %44 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %45 = call i32 @strlcpy(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %47 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DEFAULT_RDS_RADIO_TEXT, align 4
  %51 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %52 = call i32 @strlcpy(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %54 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @DEFAULT_LIMITER_RTIME, align 4
  %57 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %58 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @DEFAULT_LIMITER_DEV, align 4
  %61 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %62 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %65 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @DEFAULT_PILOT_DEVIATION, align 4
  %68 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %69 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @DEFAULT_PILOT_FREQUENCY, align 4
  %72 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %73 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %76 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* @DEFAULT_ACOMP_RTIME, align 4
  %79 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %80 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @DEFAULT_ACOMP_ATIME, align 4
  %83 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %84 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @DEFAULT_ACOMP_THRESHOLD, align 4
  %87 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %88 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @DEFAULT_ACOMP_GAIN, align 4
  %91 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %92 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %95 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* @DEFAULT_FREQUENCY, align 4
  %98 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %99 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @DEFAULT_PREEMPHASIS, align 4
  %101 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %102 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @DEFAULT_MUTE, align 4
  %104 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %105 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @DEFAULT_POWER_LEVEL, align 4
  %107 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %108 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %110 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %112 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* @DEFAULT_TUNE_RNL, align 4
  %114 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %115 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.si4713_device*, %struct.si4713_device** %2, align 8
  %117 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %23, %22, %15, %9
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @si4713_set_power_state(%struct.si4713_device*, i32) #1

declare dso_local i32 @si4713_checkrev(%struct.si4713_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
