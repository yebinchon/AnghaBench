; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_frame_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_frame_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vino_framebuffer = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"vino_frame_done(): vino_queue_transfer() failed!\0A\00", align 1
@VINO_FRAMEBUFFER_IN_USE = common dso_local global i64 0, align 8
@VINO_FRAMEBUFFER_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_frame_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_frame_done(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %5 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %6 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %5, i32 0, i32 2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %10 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %9, i32 0, i32 0
  %11 = call %struct.vino_framebuffer* @vino_queue_transfer(%struct.TYPE_4__* %10)
  store %struct.vino_framebuffer* %11, %struct.vino_framebuffer** %3, align 8
  %12 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %13 = icmp ne %struct.vino_framebuffer* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %16 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %15, i32 0, i32 2
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %22 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %21, i32 0, i32 2
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %26 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %30 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %32 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %31, i32 0, i32 2
  %33 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %34 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %32, i32* %35, i32 4)
  %37 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %38 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %37, i32 0, i32 1
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %42 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VINO_FRAMEBUFFER_IN_USE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = load i64, i64* @VINO_FRAMEBUFFER_READY, align 8
  %48 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %49 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %20
  %51 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %52 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %51, i32 0, i32 1
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %56 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @wake_up(i32* %57)
  %59 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %60 = call i32 @vino_capture_next(%struct.vino_channel_settings* %59, i32 0)
  br label %61

61:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_transfer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @vino_capture_next(%struct.vino_channel_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
