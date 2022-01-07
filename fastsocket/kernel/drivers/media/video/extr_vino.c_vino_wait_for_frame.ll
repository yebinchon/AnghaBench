; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_wait_for_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_wait_for_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"vino_wait_for_frame():\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vino_wait_for_frame(): waiting for frame %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*)* @vino_wait_for_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_wait_for_frame(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @init_waitqueue_entry(i32* %3, i32 %6)
  %8 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %9 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @add_wait_queue(i32* %10, i32* %3)
  %12 = call i32 @msecs_to_jiffies(i32 100)
  %13 = call i32 @schedule_timeout_interruptible(i32 %12)
  %14 = load i32, i32* @current, align 4
  %15 = call i64 @signal_pending(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %22 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @remove_wait_queue(i32* %23, i32* %3)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
