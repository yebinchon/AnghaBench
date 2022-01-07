; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_start_filtering.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_section_feed_start_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_feed = type { i32 }
%struct.dvb_demux_feed = type { i32, %struct.TYPE_4__, i32, %struct.dvb_demux* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i64 }
%struct.dvb_demux = type { i32 (%struct.dvb_demux_feed*)*, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMX_STATE_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_section_feed*)* @dmx_section_feed_start_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_section_feed_start_filtering(%struct.dmx_section_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmx_section_feed*, align 8
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca i32, align 4
  store %struct.dmx_section_feed* %0, %struct.dmx_section_feed** %3, align 8
  %7 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %3, align 8
  %8 = bitcast %struct.dmx_section_feed* %7 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %8, %struct.dvb_demux_feed** %4, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 3
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %10, align 8
  store %struct.dvb_demux* %11, %struct.dvb_demux** %5, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 1
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %102

19:                                               ; preds = %1
  %20 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %3, align 8
  %21 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %19
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %102

41:                                               ; preds = %30
  %42 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %52 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %64 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %64, align 8
  %66 = icmp ne i32 (%struct.dvb_demux_feed*)* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %41
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %102

73:                                               ; preds = %41
  %74 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %75 = call i32 @prepare_secfilters(%struct.dvb_demux_feed* %74)
  %76 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %77 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %77, align 8
  %79 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %80 = call i32 %78(%struct.dvb_demux_feed* %79)
  store i32 %80, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %102

87:                                               ; preds = %73
  %88 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %88, i32 0, i32 2
  %90 = call i32 @spin_lock_irq(i32* %89)
  %91 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %3, align 8
  %92 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load i32, i32* @DMX_STATE_GO, align 4
  %94 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %95 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock_irq(i32* %97)
  %99 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %100 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %87, %82, %67, %35, %24, %16
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @prepare_secfilters(%struct.dvb_demux_feed*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
