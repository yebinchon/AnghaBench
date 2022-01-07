; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vino_channel_settings = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"close():\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vino_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vino_channel_settings*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %4)
  store %struct.vino_channel_settings* %5, %struct.vino_channel_settings** %3, align 8
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %8 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %11 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %15 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %20 = call i32 @vino_release_input(%struct.vino_channel_settings* %19)
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %22 = call i32 @vino_capture_stop(%struct.vino_channel_settings* %21)
  %23 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %24 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %23, i32 0, i32 1
  %25 = call i32 @vino_queue_free(i32* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vino_release_input(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_capture_stop(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_queue_free(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
