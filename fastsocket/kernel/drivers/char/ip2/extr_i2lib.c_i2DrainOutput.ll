; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2DrainOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2DrainOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)*, i64 }

@CHANN = common dso_local global i32 0, align 4
@ITRC_DRAIN = common dso_local global i32 0, align 4
@ITRC_ENTER = common dso_local global i32 0, align 4
@i2DrainWakeup = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PTYPE_INLINE = common dso_local global i32 0, align 4
@CMD_BMARK_REQ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @i2DrainOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2DrainOutput(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CHANN, align 4
  %8 = load i32, i32* @ITRC_DRAIN, align 4
  %9 = load i32, i32* @ITRC_ENTER, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ip2trace(i32 %7, i32 %8, i32 %9, i32 1, i64 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_10__*)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 %30(%struct.TYPE_10__* %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %123

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* @i2DrainWakeup, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = ptrtoint %struct.TYPE_11__* %47 to i64
  %49 = call i32 @setup_timer(%struct.TYPE_12__* %45, i32 %46, i64 %48)
  %50 = load i32, i32* @CHANN, align 4
  %51 = load i32, i32* @ITRC_DRAIN, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ip2trace(i32 %50, i32 %51, i32 1, i32 1, i64 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @mod_timer(%struct.TYPE_12__* %58, i64 %62)
  br label %64

64:                                               ; preds = %43, %37, %34
  %65 = load i32, i32* @PTYPE_INLINE, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @CMD_BMARK_REQ, align 4
  %68 = call i32 @i2QueueCommands(i32 %65, %struct.TYPE_11__* %66, i32 -1, i32 1, i32 %67)
  %69 = load i32, i32* @current, align 4
  %70 = call i32 @init_waitqueue_entry(i32* %5, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = call i32 @add_wait_queue(i32* %72, i32* %5)
  %74 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %75 = call i32 @set_current_state(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = call i32 @serviceOutgoingFifo(%struct.TYPE_10__* %76)
  %78 = call i32 (...) @schedule()
  %79 = load i32, i32* @TASK_RUNNING, align 4
  %80 = call i32 @set_current_state(i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = call i32 @remove_wait_queue(i32* %82, i32* %5)
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %64
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @time_before(i64 %93, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %92
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @del_timer(%struct.TYPE_12__* %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @CHANN, align 4
  %108 = load i32, i32* @ITRC_DRAIN, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ip2trace(i32 %107, i32 %108, i32 3, i32 1, i64 %112)
  br label %114

114:                                              ; preds = %100, %92, %86, %64
  %115 = load i32, i32* @CHANN, align 4
  %116 = load i32, i32* @ITRC_DRAIN, align 4
  %117 = load i32, i32* @ITRC_RETURN, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ip2trace(i32 %115, i32 %116, i32 %117, i32 1, i64 %121)
  br label %123

123:                                              ; preds = %114, %33
  ret void
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, i64) #1

declare dso_local i32 @setup_timer(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @i2QueueCommands(i32, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @serviceOutgoingFifo(%struct.TYPE_10__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @del_timer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
