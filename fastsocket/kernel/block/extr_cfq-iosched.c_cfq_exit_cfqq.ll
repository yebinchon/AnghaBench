; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_exit_cfqq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_exit_cfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_queue* }
%struct.cfq_queue = type { %struct.cfq_queue* }

@.str = private unnamed_addr constant [30 x i8] c"cfqq->new_cfqq loop detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_exit_cfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_exit_cfqq(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %7 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %8 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %9 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %8, i32 0, i32 0
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %9, align 8
  %11 = icmp eq %struct.cfq_queue* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %17 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %18 = call i32 @__cfq_slice_expired(%struct.cfq_data* %16, %struct.cfq_queue* %17, i32 0)
  %19 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %20 = call i32 @cfq_schedule_dispatch(%struct.cfq_data* %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %22, i32 0, i32 0
  %24 = load %struct.cfq_queue*, %struct.cfq_queue** %23, align 8
  store %struct.cfq_queue* %24, %struct.cfq_queue** %5, align 8
  br label %25

25:                                               ; preds = %34, %21
  %26 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %27 = icmp ne %struct.cfq_queue* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %31 = icmp eq %struct.cfq_queue* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %41

34:                                               ; preds = %28
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %36 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %35, i32 0, i32 0
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %36, align 8
  store %struct.cfq_queue* %37, %struct.cfq_queue** %6, align 8
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %39 = call i32 @cfq_put_queue(%struct.cfq_queue* %38)
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  store %struct.cfq_queue* %40, %struct.cfq_queue** %5, align 8
  br label %25

41:                                               ; preds = %32, %25
  %42 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %43 = call i32 @cfq_put_queue(%struct.cfq_queue* %42)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__cfq_slice_expired(%struct.cfq_data*, %struct.cfq_queue*, i32) #1

declare dso_local i32 @cfq_schedule_dispatch(%struct.cfq_data*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cfq_put_queue(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
