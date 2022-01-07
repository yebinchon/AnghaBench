; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_frequency = type { i64, i32 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_freq(%struct.cx88_core* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %6 = load i64, i64* @UNSET, align 8
  %7 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %8 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %6, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %18
  %30 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %31 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %39 = call i32 @cx88_newstation(%struct.cx88_core* %38)
  %40 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %41 = load i32, i32* @tuner, align 4
  %42 = load i32, i32* @s_frequency, align 4
  %43 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %44 = call i32 @call_all(%struct.cx88_core* %40, i32 %41, i32 %42, %struct.v4l2_frequency* %43)
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %47 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %46)
  %48 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %29, %26, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx88_newstation(%struct.cx88_core*) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
