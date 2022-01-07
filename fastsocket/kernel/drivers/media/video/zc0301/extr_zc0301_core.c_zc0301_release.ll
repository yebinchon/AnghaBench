; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.zc0301_device = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@zc0301_dev_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Video device /dev/video%d closed\00", align 1
@zc0301_release_resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @zc0301_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc0301_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.zc0301_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = call i32 @down_write(i32* @zc0301_dev_lock)
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.zc0301_device* @video_drvdata(%struct.file* %5)
  store %struct.zc0301_device* %6, %struct.zc0301_device** %3, align 8
  %7 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %8 = call i32 @zc0301_stop_transfer(%struct.zc0301_device* %7)
  %9 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %10 = call i32 @zc0301_release_buffers(%struct.zc0301_device* %9)
  %11 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %12 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %16 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %15, i32 0, i32 2
  %17 = call i32 @wake_up_interruptible_nr(i32* %16, i32 1)
  %18 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %19 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %25 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %24, i32 0, i32 0
  %26 = load i32, i32* @zc0301_release_resources, align 4
  %27 = call i32 @kref_put(i32* %25, i32 %26)
  %28 = call i32 @up_write(i32* @zc0301_dev_lock)
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.zc0301_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @zc0301_stop_transfer(%struct.zc0301_device*) #1

declare dso_local i32 @zc0301_release_buffers(%struct.zc0301_device*) #1

declare dso_local i32 @wake_up_interruptible_nr(i32*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
