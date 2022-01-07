; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@STATUS_STREAMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hdpvr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_release(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.hdpvr_fh*, align 8
  %5 = alloca %struct.hdpvr_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %7, align 8
  store %struct.hdpvr_fh* %8, %struct.hdpvr_fh** %4, align 8
  %9 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %4, align 8
  %10 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %9, i32 0, i32 0
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %10, align 8
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %5, align 8
  %12 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %13 = icmp ne %struct.hdpvr_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %22 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %28 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATUS_STREAMING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %34 = call i32 @hdpvr_stop_streaming(%struct.hdpvr_device* %33)
  br label %35

35:                                               ; preds = %32, %26, %17
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %5, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdpvr_stop_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
