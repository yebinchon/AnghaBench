; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dmxdev* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*)* }
%struct.dvb_adapter = type { i32 }

@EUSERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMXDEV_STATE_FREE = common dso_local global i32 0, align 4
@dvbdev_demux = common dso_local global i32 0, align 4
@DVB_DEVICE_DEMUX = common dso_local global i32 0, align 4
@dvbdev_dvr = common dso_local global i32 0, align 4
@DVB_DEVICE_DVR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_dmxdev_init(%struct.dmxdev* %0, %struct.dvb_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmxdev*, align 8
  %5 = alloca %struct.dvb_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.dmxdev* %0, %struct.dmxdev** %4, align 8
  store %struct.dvb_adapter* %1, %struct.dvb_adapter** %5, align 8
  %7 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %8 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %7, i32 0, i32 7
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %10, align 8
  %12 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %13 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %12, i32 0, i32 7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call i64 %11(%struct.TYPE_7__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EUSERS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %22 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_6__* @vmalloc(i32 %26)
  %28 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %29 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %28, i32 0, i32 4
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %31 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %30, i32 0, i32 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %94

37:                                               ; preds = %20
  %38 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %39 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %42 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %41, i32 0, i32 5
  %43 = call i32 @spin_lock_init(i32* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %75, %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %47 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %52 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %53 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store %struct.dmxdev* %51, %struct.dmxdev** %58, align 8
  %59 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %60 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %68 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = load i32, i32* @DMXDEV_STATE_FREE, align 4
  %74 = call i32 @dvb_dmxdev_filter_state_set(%struct.TYPE_6__* %72, i32 %73)
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %44

78:                                               ; preds = %44
  %79 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %80 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %81 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %80, i32 0, i32 3
  %82 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %83 = load i32, i32* @DVB_DEVICE_DEMUX, align 4
  %84 = call i32 @dvb_register_device(%struct.dvb_adapter* %79, i32* %81, i32* @dvbdev_demux, %struct.dmxdev* %82, i32 %83)
  %85 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %86 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %87 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %86, i32 0, i32 2
  %88 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %89 = load i32, i32* @DVB_DEVICE_DVR, align 4
  %90 = call i32 @dvb_register_device(%struct.dvb_adapter* %85, i32* %87, i32* @dvbdev_dvr, %struct.dmxdev* %88, i32 %89)
  %91 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %92 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %91, i32 0, i32 1
  %93 = call i32 @dvb_ringbuffer_init(i32* %92, i32* null, i32 8192)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %78, %34, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_6__* @vmalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dvb_register_device(%struct.dvb_adapter*, i32*, i32*, %struct.dmxdev*, i32) #1

declare dso_local i32 @dvb_ringbuffer_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
