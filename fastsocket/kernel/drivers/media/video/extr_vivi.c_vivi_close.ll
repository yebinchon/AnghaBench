; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vivi_fh* }
%struct.vivi_fh = type { i32, %struct.vivi_dev* }
%struct.vivi_dev = type { i32, i32, %struct.vivi_dmaqueue }
%struct.vivi_dmaqueue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"close called (minor=%d, users=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vivi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivi_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vivi_fh*, align 8
  %4 = alloca %struct.vivi_dev*, align 8
  %5 = alloca %struct.vivi_dmaqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vivi_fh*, %struct.vivi_fh** %8, align 8
  store %struct.vivi_fh* %9, %struct.vivi_fh** %3, align 8
  %10 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %11 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %10, i32 0, i32 1
  %12 = load %struct.vivi_dev*, %struct.vivi_dev** %11, align 8
  store %struct.vivi_dev* %12, %struct.vivi_dev** %4, align 8
  %13 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %13, i32 0, i32 2
  store %struct.vivi_dmaqueue* %14, %struct.vivi_dmaqueue** %5, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = call %struct.TYPE_2__* @video_devdata(%struct.file* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.vivi_dmaqueue*, %struct.vivi_dmaqueue** %5, align 8
  %20 = call i32 @vivi_stop_thread(%struct.vivi_dmaqueue* %19)
  %21 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %22 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %21, i32 0, i32 0
  %23 = call i32 @videobuf_stop(i32* %22)
  %24 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %25 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %24, i32 0, i32 0
  %26 = call i32 @videobuf_mmap_free(i32* %25)
  %27 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %28 = call i32 @kfree(%struct.vivi_fh* %27)
  %29 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %30 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %42 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(%struct.vivi_dev* %39, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @video_devdata(%struct.file*) #1

declare dso_local i32 @vivi_stop_thread(%struct.vivi_dmaqueue*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @kfree(%struct.vivi_fh*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(%struct.vivi_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
