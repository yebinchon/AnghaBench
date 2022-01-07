; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_audio_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_cx88_audio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, i32, i32 }
%struct.v4l2_tuner = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"cx88: tvaudio thread started\0A\00", align 1
@UNSET = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cx88: tvaudio thread exiting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_audio_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.v4l2_tuner, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cx88_core*
  store %struct.cx88_core* %7, %struct.cx88_core** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @set_freezable()
  br label %10

10:                                               ; preds = %59, %52, %35, %1
  %11 = call i32 @msleep_interruptible(i32 1000)
  %12 = call i64 (...) @kthread_should_stop()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %60

15:                                               ; preds = %10
  %16 = call i32 (...) @try_to_freeze()
  %17 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %59 [
    i32 138, label %20
    i32 136, label %20
    i32 129, label %20
    i32 133, label %20
    i32 130, label %20
    i32 128, label %57
    i32 137, label %57
    i32 135, label %57
    i32 131, label %57
    i32 134, label %57
    i32 132, label %57
  ]

20:                                               ; preds = %15, %15, %15, %15, %15
  %21 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %22 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %58

26:                                               ; preds = %20
  %27 = call i32 @memset(%struct.v4l2_tuner* %4, i32 0, i32 4)
  %28 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %29 = call i32 @cx88_get_stereo(%struct.cx88_core* %28, %struct.v4l2_tuner* %4)
  %30 = load i32, i32* @UNSET, align 4
  %31 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %10

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %10

53:                                               ; preds = %46
  %54 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @cx88_set_stereo(%struct.cx88_core* %54, i32 %55, i32 0)
  br label %59

57:                                               ; preds = %15, %15, %15, %15, %15, %15
  br label %58

58:                                               ; preds = %57, %25
  br label %59

59:                                               ; preds = %15, %58, %53
  br label %10

60:                                               ; preds = %14
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i32 @cx88_get_stereo(%struct.cx88_core*, %struct.v4l2_tuner*) #1

declare dso_local i32 @cx88_set_stereo(%struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
