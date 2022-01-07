; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { i32 }
%struct.vino_channel_settings = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"vino_capture_enqueue():\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"vino_capture_enqueue(): vino_queue_add() failed, queue full?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vino_framebuffer* (%struct.vino_channel_settings*, i32)* @vino_capture_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vino_framebuffer* @vino_capture_enqueue(%struct.vino_channel_settings* %0, i32 %1) #0 {
  %3 = alloca %struct.vino_channel_settings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vino_framebuffer*, align 8
  %6 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %9 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.vino_framebuffer* @vino_queue_add(i32* %13, i32 %14)
  store %struct.vino_framebuffer* %15, %struct.vino_framebuffer** %5, align 8
  %16 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %17 = icmp eq %struct.vino_framebuffer* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  ret %struct.vino_framebuffer* %26
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_add(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
