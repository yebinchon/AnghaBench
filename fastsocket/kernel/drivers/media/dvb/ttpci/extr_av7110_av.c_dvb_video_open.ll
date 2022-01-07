; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@VIDEO_SOURCE_DEMUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_video_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  %7 = alloca %struct.av7110*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  store %struct.dvb_device* %11, %struct.dvb_device** %6, align 8
  %12 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %12, i32 0, i32 0
  %14 = load %struct.av7110*, %struct.av7110** %13, align 8
  store %struct.av7110* %14, %struct.av7110** %7, align 8
  %15 = load %struct.av7110*, %struct.av7110** %7, align 8
  %16 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call i32 @dvb_generic_open(%struct.inode* %17, %struct.file* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @O_ACCMODE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %23
  %32 = load %struct.av7110*, %struct.av7110** %7, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 5
  %34 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %33)
  %35 = load %struct.av7110*, %struct.av7110** %7, align 8
  %36 = getelementptr inbounds %struct.av7110, %struct.av7110* %35, i32 0, i32 4
  %37 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %36)
  %38 = load %struct.av7110*, %struct.av7110** %7, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.av7110*, %struct.av7110** %7, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @VIDEO_SOURCE_DEMUX, align 4
  %44 = load %struct.av7110*, %struct.av7110** %7, align 8
  %45 = getelementptr inbounds %struct.av7110, %struct.av7110* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.av7110*, %struct.av7110** %7, align 8
  %48 = getelementptr inbounds %struct.av7110, %struct.av7110* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.av7110*, %struct.av7110** %7, align 8
  %51 = getelementptr inbounds %struct.av7110, %struct.av7110* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %31, %23
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @dvb_generic_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
