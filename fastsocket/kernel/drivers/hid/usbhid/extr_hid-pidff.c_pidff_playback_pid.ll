; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_playback_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_playback_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_EFFECT_STOP = common dso_local global i64 0, align 8
@PID_EFFECT_START = common dso_local global i64 0, align 8
@PID_LOOP_COUNT = common dso_local global i64 0, align 8
@PID_EFFECT_OPERATION = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, i32, i32)* @pidff_playback_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_playback_pid(%struct.pidff_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pidff_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pidff_device* %0, %struct.pidff_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %9 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %7, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %20 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @PID_EFFECT_STOP, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %26 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %24, i32* %30, align 4
  br label %53

31:                                               ; preds = %3
  %32 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %33 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PID_EFFECT_START, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %39 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %46 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* @PID_LOOP_COUNT, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %31, %18
  %54 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %55 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pidff_device*, %struct.pidff_device** %4, align 8
  %58 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @PID_EFFECT_OPERATION, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @USB_DIR_OUT, align 4
  %64 = call i32 @usbhid_submit_report(i32 %56, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @usbhid_submit_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
