; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_cx23885_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_cx23885_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i64, i32, i32 }
%struct.v4l2_frequency = type { i64, i32 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*, %struct.v4l2_frequency*)* @cx23885_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_set_freq(%struct.cx23885_dev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %6 = load i64, i64* @UNSET, align 8
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %8 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %38 = load i32, i32* @tuner, align 4
  %39 = load i32, i32* @s_frequency, align 4
  %40 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %41 = call i32 @call_all(%struct.cx23885_dev* %37, i32 %38, i32 %39, %struct.v4l2_frequency* %40)
  %42 = call i32 @msleep(i32 10)
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %28, %25, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
