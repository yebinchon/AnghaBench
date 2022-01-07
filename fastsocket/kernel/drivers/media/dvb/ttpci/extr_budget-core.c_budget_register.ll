; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_budget_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_budget_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_11__, %struct.dvb_demux }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.dvb_demux = type { i32, i32, %struct.TYPE_9__, i32*, i32, i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@budget_start_feed = common dso_local global i32 0, align 4
@budget_stop_feed = common dso_local global i32 0, align 4
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*)* @budget_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_register(%struct.budget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.budget*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %3, align 8
  %6 = load %struct.budget*, %struct.budget** %3, align 8
  %7 = getelementptr inbounds %struct.budget, %struct.budget* %6, i32 0, i32 5
  store %struct.dvb_demux* %7, %struct.dvb_demux** %4, align 8
  %8 = load %struct.budget*, %struct.budget** %3, align 8
  %9 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %8)
  %10 = load %struct.budget*, %struct.budget** %3, align 8
  %11 = bitcast %struct.budget* %10 to i8*
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  store i32 256, i32* %15, align 8
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 1
  store i32 256, i32* %17, align 4
  %18 = load i32, i32* @budget_start_feed, align 4
  %19 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @budget_stop_feed, align 4
  %22 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @DMX_TS_FILTERING, align 4
  %27 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.budget*, %struct.budget** %3, align 8
  %35 = getelementptr inbounds %struct.budget, %struct.budget* %34, i32 0, i32 5
  %36 = call i32 @dvb_dmx_init(%struct.dvb_demux* %35)
  %37 = load %struct.budget*, %struct.budget** %3, align 8
  %38 = getelementptr inbounds %struct.budget, %struct.budget* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 256, i32* %39, align 8
  %40 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %40, i32 0, i32 2
  %42 = load %struct.budget*, %struct.budget** %3, align 8
  %43 = getelementptr inbounds %struct.budget, %struct.budget* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.budget*, %struct.budget** %3, align 8
  %46 = getelementptr inbounds %struct.budget, %struct.budget* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.budget*, %struct.budget** %3, align 8
  %49 = getelementptr inbounds %struct.budget, %struct.budget* %48, i32 0, i32 4
  %50 = load %struct.budget*, %struct.budget** %3, align 8
  %51 = getelementptr inbounds %struct.budget, %struct.budget* %50, i32 0, i32 1
  %52 = call i32 @dvb_dmxdev_init(%struct.TYPE_11__* %49, i32* %51)
  %53 = load i32, i32* @DMX_FRONTEND_0, align 4
  %54 = load %struct.budget*, %struct.budget** %3, align 8
  %55 = getelementptr inbounds %struct.budget, %struct.budget* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %59, align 8
  %61 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %61, i32 0, i32 2
  %63 = load %struct.budget*, %struct.budget** %3, align 8
  %64 = getelementptr inbounds %struct.budget, %struct.budget* %63, i32 0, i32 2
  %65 = call i32 %60(%struct.TYPE_9__* %62, %struct.TYPE_10__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %1
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %110

70:                                               ; preds = %1
  %71 = load i32, i32* @DMX_MEMORY_FE, align 4
  %72 = load %struct.budget*, %struct.budget** %3, align 8
  %73 = getelementptr inbounds %struct.budget, %struct.budget* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %77, align 8
  %79 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %80 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %79, i32 0, i32 2
  %81 = load %struct.budget*, %struct.budget** %3, align 8
  %82 = getelementptr inbounds %struct.budget, %struct.budget* %81, i32 0, i32 3
  %83 = call i32 %78(%struct.TYPE_9__* %80, %struct.TYPE_10__* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %110

88:                                               ; preds = %70
  %89 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %91, align 8
  %93 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %94 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %93, i32 0, i32 2
  %95 = load %struct.budget*, %struct.budget** %3, align 8
  %96 = getelementptr inbounds %struct.budget, %struct.budget* %95, i32 0, i32 2
  %97 = call i32 %92(%struct.TYPE_9__* %94, %struct.TYPE_10__* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %110

102:                                              ; preds = %88
  %103 = load %struct.budget*, %struct.budget** %3, align 8
  %104 = getelementptr inbounds %struct.budget, %struct.budget* %103, i32 0, i32 1
  %105 = load %struct.budget*, %struct.budget** %3, align 8
  %106 = getelementptr inbounds %struct.budget, %struct.budget* %105, i32 0, i32 0
  %107 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %107, i32 0, i32 2
  %109 = call i32 @dvb_net_init(i32* %104, i32* %106, %struct.TYPE_9__* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %102, %100, %86, %68
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dvb_net_init(i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
