; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_try_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_try_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@RAW3215_ACTIVE = common dso_local global i32 0, align 4
@RAW3215_FROZEN = common dso_local global i32 0, align 4
@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@RAW3215_TIMER_RUNS = common dso_local global i32 0, align 4
@RAW3215_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@raw3215_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_try_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_try_io(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %3 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %4 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RAW3215_ACTIVE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %11 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RAW3215_FROZEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  br label %101

17:                                               ; preds = %9
  %18 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %19 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %24 = call i32 @raw3215_start_io(%struct.raw3215_info* %23)
  br label %101

25:                                               ; preds = %17
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %27 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %100

30:                                               ; preds = %25
  %31 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %32 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RAW3215_FLUSHING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37, %30
  %45 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %46 = call i32 @raw3215_start_io(%struct.raw3215_info* %45)
  %47 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %48 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %55 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %54, i32 0, i32 1
  %56 = call i32 @del_timer(%struct.TYPE_6__* %55)
  %57 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %60 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %53, %44
  br label %99

64:                                               ; preds = %37
  %65 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %66 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %64
  %72 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %73 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %72, i32 0, i32 1
  %74 = call i32 @init_timer(%struct.TYPE_6__* %73)
  %75 = load i64, i64* @RAW3215_TIMEOUT, align 8
  %76 = load i64, i64* @jiffies, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %79 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i64 %77, i64* %80, align 8
  %81 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %82 = ptrtoint %struct.raw3215_info* %81 to i64
  %83 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %84 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load i32, i32* @raw3215_timeout, align 4
  %87 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %88 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %91 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %90, i32 0, i32 1
  %92 = call i32 @add_timer(%struct.TYPE_6__* %91)
  %93 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %94 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %95 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %71, %64
  br label %99

99:                                               ; preds = %98, %63
  br label %100

100:                                              ; preds = %99, %25
  br label %101

101:                                              ; preds = %16, %100, %22
  ret void
}

declare dso_local i32 @raw3215_start_io(%struct.raw3215_info*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
