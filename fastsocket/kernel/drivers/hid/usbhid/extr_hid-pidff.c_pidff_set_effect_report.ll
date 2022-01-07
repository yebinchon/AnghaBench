; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_effect_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_effect_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.ff_effect = type { %struct.TYPE_15__, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_DURATION = common dso_local global i64 0, align 8
@PID_TRIGGER_BUTTON = common dso_local global i64 0, align 8
@PID_TRIGGER_REPEAT_INT = common dso_local global i64 0, align 8
@PID_GAIN = common dso_local global i64 0, align 8
@PID_DIRECTION_ENABLE = common dso_local global i64 0, align 8
@PID_START_DELAY = common dso_local global i64 0, align 8
@PID_SET_EFFECT = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, %struct.ff_effect*)* @pidff_set_effect_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set_effect_report(%struct.pidff_device* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.pidff_device*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  store %struct.pidff_device* %0, %struct.pidff_device** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  %5 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %6 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %5, i32 0, i32 6
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %15 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %13, i32* %21, align 4
  %22 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %23 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %30 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %29, i32 0, i32 5
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %28, i32* %34, align 4
  %35 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %40 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i64, i64* @PID_DURATION, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %38, i32* %46, align 4
  %47 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %48 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %52 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = load i64, i64* @PID_TRIGGER_BUTTON, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %50, i32* %58, align 4
  %59 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %60 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %64 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i64, i64* @PID_TRIGGER_REPEAT_INT, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %62, i32* %70, align 4
  %71 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %72 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i64, i64* @PID_GAIN, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %81 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load i64, i64* @PID_GAIN, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %79, i32* %87, align 4
  %88 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %89 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load i64, i64* @PID_DIRECTION_ENABLE, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %97 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %100 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %99, i32 0, i32 3
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i32 @pidff_rescale(i32 %98, i32 65535, %struct.TYPE_16__* %101)
  %103 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %104 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %103, i32 0, i32 3
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %102, i32* %108, align 4
  %109 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %110 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %114 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load i64, i64* @PID_START_DELAY, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %112, i32* %120, align 4
  %121 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %122 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %125 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @PID_SET_EFFECT, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @USB_DIR_OUT, align 4
  %131 = call i32 @usbhid_submit_report(i32 %123, i32 %129, i32 %130)
  ret void
}

declare dso_local i32 @pidff_rescale(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @usbhid_submit_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
