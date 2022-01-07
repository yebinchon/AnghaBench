; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@DMXDEV_STATE_DONE = common dso_local global i64 0, align 8
@DMXDEV_STATE_TIMEDOUT = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dvb_demux_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_demux_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  store %struct.dmxdev_filter* %10, %struct.dmxdev_filter** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %12 = icmp ne %struct.dmxdev_filter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %19 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @poll_wait(%struct.file* %17, i32* %20, i32* %21)
  %23 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %24 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %16
  %29 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %30 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMXDEV_STATE_DONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %36 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMXDEV_STATE_TIMEDOUT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %72

41:                                               ; preds = %34, %28, %16
  %42 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %43 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* @POLLIN, align 4
  %49 = load i32, i32* @POLLRDNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @POLLPRI, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @POLLERR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %47, %41
  %58 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %59 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %58, i32 0, i32 1
  %60 = call i32 @dvb_ringbuffer_empty(%struct.TYPE_2__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @POLLIN, align 4
  %64 = load i32, i32* @POLLRDNORM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @POLLPRI, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %40, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @dvb_ringbuffer_empty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
