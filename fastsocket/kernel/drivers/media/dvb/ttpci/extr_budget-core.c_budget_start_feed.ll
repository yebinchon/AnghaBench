; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_budget_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-core.c_budget_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.budget = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @budget_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.budget*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 1
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %4, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.budget*
  store %struct.budget* %13, %struct.budget** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.budget*, %struct.budget** %5, align 8
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %14)
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.budget*, %struct.budget** %5, align 8
  %26 = getelementptr inbounds %struct.budget, %struct.budget* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.budget*, %struct.budget** %5, align 8
  %31 = getelementptr inbounds %struct.budget, %struct.budget* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.budget*, %struct.budget** %5, align 8
  %37 = call i32 @start_ts_capture(%struct.budget* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.budget*, %struct.budget** %5, align 8
  %40 = getelementptr inbounds %struct.budget, %struct.budget* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @start_ts_capture(%struct.budget*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
