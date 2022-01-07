; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_feed = type { i32 }
%struct.dvb_demux_feed = type { i32, i64, i32, i32*, %struct.TYPE_4__, %struct.dvb_demux* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dvb_demux = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_section_feed*, i32, i64, i32)* @dmx_section_feed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_section_feed_set(%struct.dmx_section_feed* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmx_section_feed*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_demux_feed*, align 8
  %11 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_section_feed* %0, %struct.dmx_section_feed** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %13 = bitcast %struct.dmx_section_feed* %12 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %13, %struct.dvb_demux_feed** %10, align 8
  %14 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %15 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %14, i32 0, i32 5
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  store %struct.dvb_demux* %16, %struct.dvb_demux** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 8191
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  %24 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %32 = call i32 @dvb_demux_feed_add(%struct.dvb_demux_feed* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %35 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %38 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %45 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @vmalloc(i64 %46)
  %48 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %49 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %51 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %30
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  %56 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %30
  %61 = load i32, i32* @DMX_STATE_READY, align 4
  %62 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %10, align 8
  %63 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dvb_demux*, %struct.dvb_demux** %11, align 8
  %65 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %54, %27, %19
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dvb_demux_feed_add(%struct.dvb_demux_feed*) #1

declare dso_local i32* @vmalloc(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
