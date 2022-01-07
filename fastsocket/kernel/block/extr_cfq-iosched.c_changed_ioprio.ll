; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_changed_ioprio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_changed_ioprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }
%struct.cfq_io_context = type { %struct.cfq_queue**, i32, %struct.cfq_data* }
%struct.cfq_queue = type { i32 }
%struct.cfq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_RW_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_context*, %struct.cfq_io_context*)* @changed_ioprio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @changed_ioprio(%struct.io_context* %0, %struct.cfq_io_context* %1) #0 {
  %3 = alloca %struct.io_context*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfq_queue*, align 8
  store %struct.io_context* %0, %struct.io_context** %3, align 8
  store %struct.cfq_io_context* %1, %struct.cfq_io_context** %4, align 8
  %9 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %10 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %9, i32 0, i32 2
  %11 = load %struct.cfq_data*, %struct.cfq_data** %10, align 8
  store %struct.cfq_data* %11, %struct.cfq_data** %5, align 8
  %12 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %13 = icmp ne %struct.cfq_data* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  %27 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %28 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %27, i32 0, i32 0
  %29 = load %struct.cfq_queue**, %struct.cfq_queue*** %28, align 8
  %30 = load i64, i64* @BLK_RW_ASYNC, align 8
  %31 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %29, i64 %30
  %32 = load %struct.cfq_queue*, %struct.cfq_queue** %31, align 8
  store %struct.cfq_queue* %32, %struct.cfq_queue** %6, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %34 = icmp ne %struct.cfq_queue* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %19
  %36 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %37 = load i64, i64* @BLK_RW_ASYNC, align 8
  %38 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %39 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.cfq_queue* @cfq_get_queue(%struct.cfq_data* %36, i64 %37, i32 %40, i32 %41)
  store %struct.cfq_queue* %42, %struct.cfq_queue** %8, align 8
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %44 = icmp ne %struct.cfq_queue* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %47 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %48 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %47, i32 0, i32 0
  %49 = load %struct.cfq_queue**, %struct.cfq_queue*** %48, align 8
  %50 = load i64, i64* @BLK_RW_ASYNC, align 8
  %51 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %49, i64 %50
  store %struct.cfq_queue* %46, %struct.cfq_queue** %51, align 8
  %52 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %53 = call i32 @cfq_put_queue(%struct.cfq_queue* %52)
  br label %54

54:                                               ; preds = %45, %35
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %57 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %56, i32 0, i32 0
  %58 = load %struct.cfq_queue**, %struct.cfq_queue*** %57, align 8
  %59 = load i64, i64* @BLK_RW_SYNC, align 8
  %60 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %58, i64 %59
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %60, align 8
  store %struct.cfq_queue* %61, %struct.cfq_queue** %6, align 8
  %62 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %63 = icmp ne %struct.cfq_queue* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %66 = call i32 @cfq_mark_cfqq_prio_changed(%struct.cfq_queue* %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %69 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %67, %18
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.cfq_queue* @cfq_get_queue(%struct.cfq_data*, i64, i32, i32) #1

declare dso_local i32 @cfq_put_queue(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_prio_changed(%struct.cfq_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
