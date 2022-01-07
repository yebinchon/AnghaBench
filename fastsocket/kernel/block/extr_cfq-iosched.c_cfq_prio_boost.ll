; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_prio_boost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_prio_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i64, i64, i32, i32 }

@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@IOPRIO_NORM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_queue*)* @cfq_prio_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_prio_boost(%struct.cfq_queue* %0) #0 {
  %2 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_queue* %0, %struct.cfq_queue** %2, align 8
  %3 = call i64 (...) @has_fs_excl()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %7 = call i64 @cfq_class_idle(%struct.cfq_queue* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %11 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %12 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %15 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IOPRIO_NORM, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i64, i64* @IOPRIO_NORM, align 8
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %22 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %26 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %29 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %31 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %34 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @has_fs_excl(...) #1

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
