; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_stream_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_stream_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@STREAM_INTERRUPT = common dso_local global i64 0, align 8
@STREAM_OFF = common dso_local global i64 0, align 8
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ZC0301_URB_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"URB timeout reached. The camera is misconfigured. To use it, close and open /dev/video%d again.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zc0301_device*)* @zc0301_stream_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc0301_stream_interrupt(%struct.zc0301_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca i64, align 8
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  %5 = load i64, i64* @STREAM_INTERRUPT, align 8
  %6 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %7 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %9 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %12 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STREAM_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %18 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DEV_DISCONNECTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ true, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @ZC0301_URB_TIMEOUT, align 4
  %27 = call i64 @wait_event_timeout(i32 %10, i32 %25, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %29 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DEV_DISCONNECTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %23
  %38 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %39 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STREAM_OFF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %45 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %46 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %50 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %43, %34
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
