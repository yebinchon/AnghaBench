; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_skip_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_skip_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { i32, i32 }
%struct.vino_framebuffer = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"vino_skip_frame(): vino_queue_peek() failed!\0A\00", align 1
@VINO_FRAMEBUFFER_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_skip_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_skip_frame(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca %struct.vino_framebuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %6 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %7 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %11 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %10, i32 0, i32 1
  %12 = call %struct.vino_framebuffer* @vino_queue_peek(i32* %11, i32* %5)
  store %struct.vino_framebuffer* %12, %struct.vino_framebuffer** %3, align 8
  %13 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %14 = icmp ne %struct.vino_framebuffer* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %17 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %27 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @VINO_FRAMEBUFFER_UNUSED, align 4
  %31 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %32 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %3, align 8
  %34 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %38 = call i32 @vino_capture_next(%struct.vino_channel_settings* %37, i32 0)
  br label %39

39:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_peek(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @vino_capture_next(%struct.vino_channel_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
