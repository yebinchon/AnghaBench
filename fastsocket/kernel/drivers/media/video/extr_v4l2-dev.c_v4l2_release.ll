; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*)* }
%struct.video_device_shadow = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.video_device_shadow*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %5, align 8
  %10 = load %struct.video_device*, %struct.video_device** %5, align 8
  %11 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device* %10)
  store %struct.video_device_shadow* %11, %struct.video_device_shadow** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.video_device*, %struct.video_device** %5, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.file*)*, i32 (%struct.file*)** %15, align 8
  %17 = icmp ne i32 (%struct.file*)* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %20 = icmp ne %struct.video_device_shadow* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %23 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %28 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mutex_lock(i64 %29)
  br label %31

31:                                               ; preds = %26, %21, %18
  %32 = load %struct.video_device*, %struct.video_device** %5, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.file*)*, i32 (%struct.file*)** %35, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = call i32 %36(%struct.file* %37)
  %39 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %40 = icmp ne %struct.video_device_shadow* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %43 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.video_device_shadow*, %struct.video_device_shadow** %6, align 8
  %48 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mutex_unlock(i64 %49)
  br label %51

51:                                               ; preds = %46, %41, %31
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.video_device*, %struct.video_device** %5, align 8
  %54 = call i32 @video_put(%struct.video_device* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @video_put(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
