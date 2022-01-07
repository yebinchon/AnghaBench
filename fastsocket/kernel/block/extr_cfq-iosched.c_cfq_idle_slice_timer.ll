; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_idle_slice_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_idle_slice_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.TYPE_2__*, i32, %struct.cfq_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.cfq_queue = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"idle timer fired\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cfq_idle_slice_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_idle_slice_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.cfq_data*
  store %struct.cfq_data* %8, %struct.cfq_data** %3, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %10 = call i32 @cfq_log(%struct.cfq_data* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %12 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %19 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %18, i32 0, i32 2
  %20 = load %struct.cfq_queue*, %struct.cfq_queue** %19, align 8
  store %struct.cfq_queue* %20, %struct.cfq_queue** %4, align 8
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %22 = icmp ne %struct.cfq_queue* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %24 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %25 = call i64 @cfq_cfqq_must_dispatch(%struct.cfq_queue* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %53

28:                                               ; preds = %23
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %30 = call i64 @cfq_slice_used(%struct.cfq_queue* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %49

33:                                               ; preds = %28
  %34 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %35 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %56

39:                                               ; preds = %33
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %41 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %40, i32 0, i32 0
  %42 = call i32 @RB_EMPTY_ROOT(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %47 = call i32 @cfq_clear_cfqq_deep(%struct.cfq_queue* %46)
  br label %48

48:                                               ; preds = %45, %1
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cfq_slice_expired(%struct.cfq_data* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44, %27
  %54 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %55 = call i32 @cfq_schedule_dispatch(%struct.cfq_data* %54)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %58 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  ret void
}

declare dso_local i32 @cfq_log(%struct.cfq_data*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @cfq_cfqq_must_dispatch(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_slice_used(%struct.cfq_queue*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @cfq_clear_cfqq_deep(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local i32 @cfq_schedule_dispatch(%struct.cfq_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
