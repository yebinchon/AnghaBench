; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { i64, i32, i32, i32, i32, i32, %struct.dmxdev* }
%struct.dmxdev = type { i32, i32, %struct.dvb_device* }
%struct.dmxdev_filter = type { i64, i32, i32, i32, i32, i32, %struct.dmxdev* }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMXDEV_STATE_FREE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i32 0, align 4
@DMXDEV_TYPE_NONE = common dso_local global i32 0, align 4
@DMXDEV_STATE_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_demux_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_demux_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  %7 = alloca %struct.dmxdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmxdev_filter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.dvb_device*, %struct.dvb_device** %11, align 8
  store %struct.dvb_device* %12, %struct.dvb_device** %6, align 8
  %13 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %13, i32 0, i32 6
  %15 = load %struct.dmxdev*, %struct.dmxdev** %14, align 8
  store %struct.dmxdev* %15, %struct.dmxdev** %7, align 8
  %16 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %17 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %16, i32 0, i32 2
  %18 = load %struct.dvb_device*, %struct.dvb_device** %17, align 8
  %19 = icmp ne %struct.dvb_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %25 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %24, i32 0, i32 1
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %101

31:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %35 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 2
  %41 = load %struct.dvb_device*, %struct.dvb_device** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %41, i64 %43
  %45 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DMXDEV_STATE_FREE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %57 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %62 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* @EMFILE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %54
  %67 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %68 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %67, i32 0, i32 2
  %69 = load %struct.dvb_device*, %struct.dvb_device** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %69, i64 %71
  %73 = bitcast %struct.dvb_device* %72 to %struct.dmxdev_filter*
  store %struct.dmxdev_filter* %73, %struct.dmxdev_filter** %9, align 8
  %74 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %75 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %74, i32 0, i32 5
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %78 = bitcast %struct.dmxdev_filter* %77 to %struct.dvb_device*
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  store %struct.dvb_device* %78, %struct.dvb_device** %80, align 8
  %81 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %82 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %81, i32 0, i32 4
  %83 = call i32 @dvb_ringbuffer_init(i32* %82, i32* null, i32 8192)
  %84 = load i32, i32* @DMXDEV_TYPE_NONE, align 4
  %85 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %86 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %88 = bitcast %struct.dmxdev_filter* %87 to %struct.dvb_device*
  %89 = load i32, i32* @DMXDEV_STATE_ALLOCATED, align 4
  %90 = call i32 @dvb_dmxdev_filter_state_set(%struct.dvb_device* %88, i32 %89)
  %91 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  %92 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %91, i32 0, i32 2
  %93 = call i32 @init_timer(i32* %92)
  %94 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %95 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.dmxdev*, %struct.dmxdev** %7, align 8
  %99 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %66, %60, %28, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dvb_ringbuffer_init(i32*, i32*, i32) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dvb_device*, i32) #1

declare dso_local i32 @init_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
