; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-park.c_issue_park_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-park.c_issue_park_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.request_queue*, %struct.TYPE_4__* }
%struct.request_queue = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.request = type { i32, i64*, i8*, i32* }

@jiffies = common dso_local global i64 0, align 8
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@ide_park_wq = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_PARK_HEADS = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i8* null, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@REQ_UNPARK_HEADS = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_FRONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @issue_park_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_park_cmd(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %6, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @time_before(i64 %30, i64 %33)
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = call i32 @wake_up_all(i32* @ide_park_wq)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i64 @del_timer(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %41, %29
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %55 = call i32 @blk_run_queue(%struct.request_queue* %54)
  br label %56

56:                                               ; preds = %53, %47
  br label %113

57:                                               ; preds = %2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %62 = load i32, i32* @READ, align 4
  %63 = load i32, i32* @__GFP_WAIT, align 4
  %64 = call %struct.request* @blk_get_request(%struct.request_queue* %61, i32 %62, i32 %63)
  store %struct.request* %64, %struct.request** %7, align 8
  %65 = load i32, i32* @REQ_PARK_HEADS, align 4
  %66 = load %struct.request*, %struct.request** %7, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.request*, %struct.request** %7, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i8*, i8** @REQ_TYPE_SPECIAL, align 8
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.request*, %struct.request** %7, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 1
  store i64* %4, i64** %76, align 8
  %77 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %78 = load %struct.request*, %struct.request** %7, align 8
  %79 = call i32 @blk_execute_rq(%struct.request_queue* %77, i32* null, %struct.request* %78, i32 1)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.request*, %struct.request** %7, align 8
  %81 = call i32 @blk_put_request(%struct.request* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %57
  br label %112

85:                                               ; preds = %57
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = load i32, i32* @READ, align 4
  %88 = load i32, i32* @GFP_NOWAIT, align 4
  %89 = call %struct.request* @blk_get_request(%struct.request_queue* %86, i32 %87, i32 %88)
  store %struct.request* %89, %struct.request** %7, align 8
  %90 = load %struct.request*, %struct.request** %7, align 8
  %91 = icmp ne %struct.request* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %112

97:                                               ; preds = %85
  %98 = load i32, i32* @REQ_UNPARK_HEADS, align 4
  %99 = load %struct.request*, %struct.request** %7, align 8
  %100 = getelementptr inbounds %struct.request, %struct.request* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.request*, %struct.request** %7, align 8
  %104 = getelementptr inbounds %struct.request, %struct.request* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load i8*, i8** @REQ_TYPE_SPECIAL, align 8
  %106 = load %struct.request*, %struct.request** %7, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %109 = load %struct.request*, %struct.request** %7, align 8
  %110 = load i32, i32* @ELEVATOR_INSERT_FRONT, align 4
  %111 = call i32 @elv_add_request(%struct.request_queue* %108, %struct.request* %109, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %97, %96, %84
  br label %113

113:                                              ; preds = %112, %56
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @time_before(i64, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_run_queue(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @elv_add_request(%struct.request_queue*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
