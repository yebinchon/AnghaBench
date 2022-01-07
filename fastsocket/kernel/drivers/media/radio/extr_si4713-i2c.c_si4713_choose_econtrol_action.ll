; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_choose_econtrol_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_choose_econtrol_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SI4713_TX_RDS_PI = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_GAIN = common dso_local global i32 0, align 4
@SI4713_TX_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_ATTACK_TIME = common dso_local global i32 0, align 4
@ATTACK_TIME_UNIT = common dso_local global i32 0, align 4
@SI4713_TX_PILOT_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_AUDIO_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_RDS_DEVIATION = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_MISC = common dso_local global i32 0, align 4
@SI4713_TX_ACOMP_ENABLE = common dso_local global i32 0, align 4
@SI4713_TX_COMPONENT_ENABLE = common dso_local global i32 0, align 4
@SI4713_TX_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@limiter_times = common dso_local global i64* null, align 8
@SI4713_TX_ACOMP_RELEASE_TIME = common dso_local global i32 0, align 4
@acomp_rtimes = common dso_local global i64* null, align 8
@SI4713_TX_PREEMPHASIS = common dso_local global i32 0, align 4
@preemphasis_values = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i32, i32**, i32*, i32*, i32*, i32*, i64**, i32*)* @si4713_choose_econtrol_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_choose_econtrol_action(%struct.si4713_device* %0, i32 %1, i32** %2, i32* %3, i32* %4, i32* %5, i32* %6, i64** %7, i32* %8) #0 {
  %10 = alloca %struct.si4713_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32** %2, i32*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64** %7, i64*** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %157 [
    i32 130, label %21
    i32 138, label %29
    i32 140, label %37
    i32 132, label %45
    i32 142, label %53
    i32 134, label %62
    i32 137, label %70
    i32 131, label %78
    i32 129, label %86
    i32 136, label %95
    i32 141, label %104
    i32 133, label %113
    i32 135, label %122
    i32 139, label %134
    i32 128, label %146
  ]

21:                                               ; preds = %9
  %22 = load i32, i32* @SI4713_TX_RDS_PI, align 4
  %23 = load i32*, i32** %15, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %16, align 8
  store i32 1, i32* %24, align 4
  %25 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %26 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %12, align 8
  store i32* %27, i32** %28, align 8
  br label %160

29:                                               ; preds = %9
  %30 = load i32, i32* @SI4713_TX_ACOMP_THRESHOLD, align 4
  %31 = load i32*, i32** %15, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %16, align 8
  store i32 1, i32* %32, align 4
  %33 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %34 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %12, align 8
  store i32* %35, i32** %36, align 8
  br label %160

37:                                               ; preds = %9
  %38 = load i32, i32* @SI4713_TX_ACOMP_GAIN, align 4
  %39 = load i32*, i32** %15, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %16, align 8
  store i32 1, i32* %40, align 4
  %41 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %42 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %12, align 8
  store i32* %43, i32** %44, align 8
  br label %160

45:                                               ; preds = %9
  %46 = load i32, i32* @SI4713_TX_PILOT_FREQUENCY, align 4
  %47 = load i32*, i32** %15, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %16, align 8
  store i32 1, i32* %48, align 4
  %49 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %50 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %12, align 8
  store i32* %51, i32** %52, align 8
  br label %160

53:                                               ; preds = %9
  %54 = load i32, i32* @SI4713_TX_ACOMP_ATTACK_TIME, align 4
  %55 = load i32*, i32** %15, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @ATTACK_TIME_UNIT, align 4
  %57 = load i32*, i32** %16, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %59 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32**, i32*** %12, align 8
  store i32* %60, i32** %61, align 8
  br label %160

62:                                               ; preds = %9
  %63 = load i32, i32* @SI4713_TX_PILOT_DEVIATION, align 4
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %16, align 8
  store i32 10, i32* %65, align 4
  %66 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %67 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %12, align 8
  store i32* %68, i32** %69, align 8
  br label %160

70:                                               ; preds = %9
  %71 = load i32, i32* @SI4713_TX_AUDIO_DEVIATION, align 4
  %72 = load i32*, i32** %15, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %16, align 8
  store i32 10, i32* %73, align 4
  %74 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %75 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %12, align 8
  store i32* %76, i32** %77, align 8
  br label %160

78:                                               ; preds = %9
  %79 = load i32, i32* @SI4713_TX_RDS_DEVIATION, align 4
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %16, align 8
  store i32 1, i32* %81, align 4
  %82 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %83 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %12, align 8
  store i32* %84, i32** %85, align 8
  br label %160

86:                                               ; preds = %9
  %87 = load i32, i32* @SI4713_TX_RDS_PS_MISC, align 4
  %88 = load i32*, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 5, i32* %89, align 4
  %90 = load i32*, i32** %14, align 8
  store i32 992, i32* %90, align 4
  %91 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %92 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32**, i32*** %12, align 8
  store i32* %93, i32** %94, align 8
  br label %160

95:                                               ; preds = %9
  %96 = load i32, i32* @SI4713_TX_ACOMP_ENABLE, align 4
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %13, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32*, i32** %14, align 8
  store i32 2, i32* %99, align 4
  %100 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %101 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %12, align 8
  store i32* %102, i32** %103, align 8
  br label %160

104:                                              ; preds = %9
  %105 = load i32, i32* @SI4713_TX_ACOMP_ENABLE, align 4
  %106 = load i32*, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %13, align 8
  store i32 0, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  store i32 1, i32* %108, align 4
  %109 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %110 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32**, i32*** %12, align 8
  store i32* %111, i32** %112, align 8
  br label %160

113:                                              ; preds = %9
  %114 = load i32, i32* @SI4713_TX_COMPONENT_ENABLE, align 4
  %115 = load i32*, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 0, i32* %116, align 4
  %117 = load i32*, i32** %14, align 8
  store i32 1, i32* %117, align 4
  %118 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %119 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32**, i32*** %12, align 8
  store i32* %120, i32** %121, align 8
  br label %160

122:                                              ; preds = %9
  %123 = load i32, i32* @SI4713_TX_LIMITER_RELEASE_TIME, align 4
  %124 = load i32*, i32** %15, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i64*, i64** @limiter_times, align 8
  %126 = load i64**, i64*** %17, align 8
  store i64* %125, i64** %126, align 8
  %127 = load i64*, i64** @limiter_times, align 8
  %128 = call i32 @ARRAY_SIZE(i64* %127)
  %129 = load i32*, i32** %18, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %131 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32**, i32*** %12, align 8
  store i32* %132, i32** %133, align 8
  br label %160

134:                                              ; preds = %9
  %135 = load i32, i32* @SI4713_TX_ACOMP_RELEASE_TIME, align 4
  %136 = load i32*, i32** %15, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i64*, i64** @acomp_rtimes, align 8
  %138 = load i64**, i64*** %17, align 8
  store i64* %137, i64** %138, align 8
  %139 = load i64*, i64** @acomp_rtimes, align 8
  %140 = call i32 @ARRAY_SIZE(i64* %139)
  %141 = load i32*, i32** %18, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %143 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  %145 = load i32**, i32*** %12, align 8
  store i32* %144, i32** %145, align 8
  br label %160

146:                                              ; preds = %9
  %147 = load i32, i32* @SI4713_TX_PREEMPHASIS, align 4
  %148 = load i32*, i32** %15, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i64*, i64** @preemphasis_values, align 8
  %150 = load i64**, i64*** %17, align 8
  store i64* %149, i64** %150, align 8
  %151 = load i64*, i64** @preemphasis_values, align 8
  %152 = call i32 @ARRAY_SIZE(i64* %151)
  %153 = load i32*, i32** %18, align 8
  store i32 %152, i32* %153, align 4
  %154 = load %struct.si4713_device*, %struct.si4713_device** %10, align 8
  %155 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %154, i32 0, i32 0
  %156 = load i32**, i32*** %12, align 8
  store i32* %155, i32** %156, align 8
  br label %160

157:                                              ; preds = %9
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %157, %146, %134, %122, %113, %104, %95, %86, %78, %70, %62, %53, %45, %37, %29, %21
  %161 = load i32, i32* %19, align 4
  ret i32 %161
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
