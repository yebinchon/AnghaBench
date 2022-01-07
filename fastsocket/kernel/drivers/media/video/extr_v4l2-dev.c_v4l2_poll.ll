; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.poll_table_struct*)* }
%struct.video_device_shadow = type { i64 }

@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @v4l2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.video_device_shadow*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %6, align 8
  %11 = load %struct.video_device*, %struct.video_device** %6, align 8
  %12 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device* %11)
  store %struct.video_device_shadow* %12, %struct.video_device_shadow** %7, align 8
  %13 = load i32, i32* @POLLERR, align 4
  %14 = load i32, i32* @POLLHUP, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %19, align 8
  %21 = icmp ne i32 (%struct.file*, %struct.poll_table_struct*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %26 = icmp ne %struct.video_device_shadow* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %29 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %34 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mutex_lock(i64 %35)
  br label %37

37:                                               ; preds = %32, %27, %24
  %38 = load %struct.video_device*, %struct.video_device** %6, align 8
  %39 = call i64 @video_is_registered(%struct.video_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.video_device*, %struct.video_device** %6, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %45, align 8
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %49 = call i32 %46(%struct.file* %47, %struct.poll_table_struct* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %41, %37
  %51 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %52 = icmp ne %struct.video_device_shadow* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %55 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %60 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @mutex_unlock(i64 %61)
  br label %63

63:                                               ; preds = %58, %53, %50
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @mutex_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
