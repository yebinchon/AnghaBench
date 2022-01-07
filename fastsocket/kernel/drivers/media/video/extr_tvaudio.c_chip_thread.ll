; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i64, i32, i32, i64, %struct.v4l2_subdev, %struct.CHIPDESC* }
%struct.v4l2_subdev = type { i32 }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*, i32)* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thread started\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"thread wakeup\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"thread checkmode\0A\00", align 1
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"thread exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @chip_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.CHIPDESC*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.CHIPSTATE*
  store %struct.CHIPSTATE* %8, %struct.CHIPSTATE** %3, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %9, i32 0, i32 5
  %11 = load %struct.CHIPDESC*, %struct.CHIPDESC** %10, align 8
  store %struct.CHIPDESC* %11, %struct.CHIPDESC** %4, align 8
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %13 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %12, i32 0, i32 4
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call i32 @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @set_freezable()
  br label %18

18:                                               ; preds = %121, %57, %45, %1
  %19 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %20 = call i32 @set_current_state(i32 %19)
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (...) @schedule()
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* @TASK_RUNNING, align 4
  %27 = call i32 @set_current_state(i32 %26)
  %28 = call i32 (...) @try_to_freeze()
  %29 = call i64 (...) @kthread_should_stop()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %128

32:                                               ; preds = %25
  %33 = load i32, i32* @debug, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = call i32 @v4l2_dbg(i32 1, i32 %33, %struct.v4l2_subdev* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %37 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %42 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %32
  br label %18

46:                                               ; preds = %40
  %47 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %48 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %47, i32 0, i32 0
  %49 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %48, align 8
  %50 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %51 = call i32 %49(%struct.CHIPSTATE* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %54 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %18

58:                                               ; preds = %46
  %59 = load i32, i32* @debug, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %61 = call i32 @v4l2_dbg(i32 1, i32 %59, %struct.v4l2_subdev* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %64 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %71 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %70, i32 0, i32 1
  %72 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %71, align 8
  %73 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %74 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %75 = call i32 %72(%struct.CHIPSTATE* %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %58
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @V4L2_TUNER_MODE_LANG1_LANG2, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %83 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %82, i32 0, i32 1
  %84 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %83, align 8
  %85 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %86 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %87 = call i32 %84(%struct.CHIPSTATE* %85, i32 %86)
  br label %121

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %95 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %94, i32 0, i32 1
  %96 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %95, align 8
  %97 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %98 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %99 = call i32 %96(%struct.CHIPSTATE* %97, i32 %98)
  br label %120

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %107 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %106, i32 0, i32 1
  %108 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %107, align 8
  %109 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %110 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %111 = call i32 %108(%struct.CHIPSTATE* %109, i32 %110)
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.CHIPDESC*, %struct.CHIPDESC** %4, align 8
  %114 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %113, i32 0, i32 1
  %115 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %114, align 8
  %116 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %117 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %118 = call i32 %115(%struct.CHIPSTATE* %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %81
  %122 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %123 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %122, i32 0, i32 2
  %124 = load i64, i64* @jiffies, align 8
  %125 = call i64 @msecs_to_jiffies(i32 2000)
  %126 = add nsw i64 %124, %125
  %127 = call i32 @mod_timer(i32* %123, i64 %126)
  br label %18

128:                                              ; preds = %31
  %129 = load i32, i32* @debug, align 4
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %131 = call i32 @v4l2_dbg(i32 1, i32 %129, %struct.v4l2_subdev* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
