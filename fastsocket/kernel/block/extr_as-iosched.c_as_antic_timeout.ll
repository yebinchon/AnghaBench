; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.as_data* }
%struct.as_data = type { i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.as_io_context* }
%struct.as_io_context = type { i64, i32 }

@ANTIC_WAIT_REQ = common dso_local global i64 0, align 8
@ANTIC_WAIT_NEXT = common dso_local global i64 0, align 8
@ANTIC_FINISHED = common dso_local global i64 0, align 8
@AS_TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @as_antic_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_antic_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.as_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.as_io_context*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.request_queue*
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.as_data*, %struct.as_data** %12, align 8
  store %struct.as_data* %13, %struct.as_data** %4, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.as_data*, %struct.as_data** %4, align 8
  %20 = getelementptr inbounds %struct.as_data, %struct.as_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ANTIC_WAIT_REQ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.as_data*, %struct.as_data** %4, align 8
  %26 = getelementptr inbounds %struct.as_data, %struct.as_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ANTIC_WAIT_NEXT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %24, %1
  %31 = load %struct.as_data*, %struct.as_data** %4, align 8
  %32 = getelementptr inbounds %struct.as_data, %struct.as_data* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.as_data*, %struct.as_data** %4, align 8
  %37 = getelementptr inbounds %struct.as_data, %struct.as_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.as_io_context*, %struct.as_io_context** %39, align 8
  store %struct.as_io_context* %40, %struct.as_io_context** %6, align 8
  %41 = load i64, i64* @ANTIC_FINISHED, align 8
  %42 = load %struct.as_data*, %struct.as_data** %4, align 8
  %43 = getelementptr inbounds %struct.as_data, %struct.as_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %45 = load %struct.as_data*, %struct.as_data** %4, align 8
  %46 = getelementptr inbounds %struct.as_data, %struct.as_data* %45, i32 0, i32 4
  %47 = call i32 @kblockd_schedule_work(%struct.request_queue* %44, i32* %46)
  %48 = load %struct.as_io_context*, %struct.as_io_context** %6, align 8
  %49 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %30
  %53 = load %struct.as_data*, %struct.as_data** %4, align 8
  %54 = getelementptr inbounds %struct.as_data, %struct.as_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 7, %55
  %57 = add nsw i32 %56, 256
  %58 = sdiv i32 %57, 8
  %59 = load %struct.as_data*, %struct.as_data** %4, align 8
  %60 = getelementptr inbounds %struct.as_data, %struct.as_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %30
  %62 = load i32, i32* @AS_TASK_RUNNING, align 4
  %63 = load %struct.as_io_context*, %struct.as_io_context** %6, align 8
  %64 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = load %struct.as_data*, %struct.as_data** %4, align 8
  %69 = getelementptr inbounds %struct.as_data, %struct.as_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 7, %70
  %72 = add nsw i32 %71, 256
  %73 = sdiv i32 %72, 8
  %74 = load %struct.as_data*, %struct.as_data** %4, align 8
  %75 = getelementptr inbounds %struct.as_data, %struct.as_data* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %61
  %77 = load %struct.as_data*, %struct.as_data** %4, align 8
  %78 = getelementptr inbounds %struct.as_data, %struct.as_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  br label %82

82:                                               ; preds = %76, %24
  %83 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kblockd_schedule_work(%struct.request_queue*, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
