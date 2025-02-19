; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vino_channel_settings, %struct.vino_channel_settings }
%struct.vino_channel_settings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@VINO_CHANNEL_A = common dso_local global i64 0, align 8
@vino_drvdata = common dso_local global %struct.TYPE_4__* null, align 8
@VINO_MAX_FRAME_SKIP_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vino_capture_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_capture_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vino_channel_settings*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @VINO_CHANNEL_A, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_drvdata, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vino_drvdata, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi %struct.vino_channel_settings* [ %9, %7 ], [ %12, %10 ]
  store %struct.vino_channel_settings* %14, %struct.vino_channel_settings** %3, align 8
  %15 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %16 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %22 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %34 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VINO_MAX_FRAME_SKIP_COUNT, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %41 = call i32 @vino_skip_frame(%struct.vino_channel_settings* %40)
  br label %48

42:                                               ; preds = %32, %26
  %43 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %44 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %47 = call i32 @vino_frame_done(%struct.vino_channel_settings* %46)
  br label %48

48:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @vino_skip_frame(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_frame_done(%struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
