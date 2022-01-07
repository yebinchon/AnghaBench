; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.pwc_device = type { i32*, i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @pwc_video_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_video_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.pwc_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  store %struct.video_device* %11, %struct.video_device** %6, align 8
  %12 = load %struct.video_device*, %struct.video_device** %6, align 8
  %13 = icmp eq %struct.video_device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.video_device*, %struct.video_device** %6, align 8
  %19 = call %struct.pwc_device* @video_get_drvdata(%struct.video_device* %18)
  store %struct.pwc_device* %19, %struct.pwc_device** %7, align 8
  %20 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %21 = icmp eq %struct.pwc_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %27 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %26, i32 0, i32 3
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %30 = call i32 @pwc_isoc_init(%struct.pwc_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 3
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %25
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %41 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %40, i32 0, i32 2
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @poll_wait(%struct.file* %39, i32* %41, i32* %42)
  %44 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @POLLERR, align 4
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %38
  %51 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %52 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @POLLIN, align 4
  %57 = load i32, i32* @POLLRDNORM, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %55, %48, %36, %22, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.pwc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwc_isoc_init(%struct.pwc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
