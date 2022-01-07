; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_condition_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_condition_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.ff_effect = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_PARAM_BLOCK_OFFSET = common dso_local global i64 0, align 8
@PID_CP_OFFSET = common dso_local global i64 0, align 8
@PID_POS_COEFFICIENT = common dso_local global i64 0, align 8
@PID_NEG_COEFFICIENT = common dso_local global i64 0, align 8
@PID_POS_SATURATION = common dso_local global i64 0, align 8
@PID_NEG_SATURATION = common dso_local global i64 0, align 8
@PID_DEAD_BAND = common dso_local global i64 0, align 8
@PID_SET_CONDITION = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, %struct.ff_effect*)* @pidff_set_condition_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set_condition_report(%struct.pidff_device* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.pidff_device*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  %5 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  %6 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %7 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %16 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %14, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %137, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %140

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %29 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64, i64* @PID_PARAM_BLOCK_OFFSET, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %27, i32* %35, align 4
  %36 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %37 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i64, i64* @PID_CP_OFFSET, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %42 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pidff_set_signed(%struct.TYPE_9__* %40, i32 %49)
  %51 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %52 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i64, i64* @PID_POS_COEFFICIENT, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %54
  %56 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %57 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pidff_set_signed(%struct.TYPE_9__* %55, i32 %64)
  %66 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %67 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* @PID_NEG_COEFFICIENT, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %72 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pidff_set_signed(%struct.TYPE_9__* %70, i32 %79)
  %81 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %82 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* @PID_POS_SATURATION, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %87 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pidff_set(%struct.TYPE_9__* %85, i32 %94)
  %96 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %97 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i64, i64* @PID_NEG_SATURATION, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %99
  %101 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %102 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pidff_set(%struct.TYPE_9__* %100, i32 %109)
  %111 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %112 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %111, i32 0, i32 2
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i64, i64* @PID_DEAD_BAND, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %114
  %116 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %117 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pidff_set(%struct.TYPE_9__* %115, i32 %124)
  %126 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %127 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %130 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @PID_SET_CONDITION, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @USB_DIR_OUT, align 4
  %136 = call i32 @usbhid_submit_report(i32 %128, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %26
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %23

140:                                              ; preds = %23
  ret void
}

declare dso_local i32 @pidff_set_signed(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pidff_set(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usbhid_submit_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
