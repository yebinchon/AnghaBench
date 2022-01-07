; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_section_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_section_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_filter = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i64, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"dmxdev: section callback %02x %02x %02x %02x %02x %02x\0A\00", align 1
@DMX_ONESHOT = common dso_local global i32 0, align 4
@DMXDEV_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, %struct.dmx_section_filter*, i32)* @dvb_dmxdev_section_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_section_callback(i32* %0, i64 %1, i32* %2, i64 %3, %struct.dmx_section_filter* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmx_section_filter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dmxdev_filter*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.dmx_section_filter* %4, %struct.dmx_section_filter** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %12, align 8
  %17 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %16, i32 0, i32 0
  %18 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %17, align 8
  store %struct.dmxdev_filter* %18, %struct.dmxdev_filter** %14, align 8
  %19 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %20 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %26 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @wake_up(i32* %27)
  store i32 0, i32* %7, align 4
  br label %118

29:                                               ; preds = %6
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %36 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %42 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  store i32 0, i32* %7, align 4
  br label %118

46:                                               ; preds = %29
  %47 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %48 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %47, i32 0, i32 4
  %49 = call i32 @del_timer(i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %70 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %69, i32 0, i32 1
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @dvb_dmxdev_buffer_write(%struct.TYPE_9__* %70, i32* %71, i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %46
  %79 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %80 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %79, i32 0, i32 1
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @dvb_dmxdev_buffer_write(%struct.TYPE_9__* %80, i32* %81, i64 %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %78, %46
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %89 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %88, i32 0, i32 1
  %90 = call i32 @dvb_ringbuffer_flush(%struct.TYPE_9__* %89)
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %93 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %84
  %96 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %97 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DMX_ONESHOT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i64, i64* @DMXDEV_STATE_DONE, align 8
  %106 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %107 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %95
  %109 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %110 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %115 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = call i32 @wake_up(i32* %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %108, %40, %24
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_dmxdev_buffer_write(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @dvb_ringbuffer_flush(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
