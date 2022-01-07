; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_preempt_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_preempt_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"preempt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_preempt_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_preempt_queue(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %5 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %7 = call i32 @cfq_log_cfqq(%struct.cfq_data* %5, %struct.cfq_queue* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %9 = call i32 @cfq_slice_expired(%struct.cfq_data* %8, i32 1)
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %11 = call i32 @cfq_cfqq_on_rr(%struct.cfq_queue* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %17 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %18 = call i32 @cfq_service_tree_add(%struct.cfq_data* %16, %struct.cfq_queue* %17, i32 1)
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %20 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %22 = call i32 @cfq_mark_cfqq_slice_new(%struct.cfq_queue* %21)
  ret void
}

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_service_tree_add(%struct.cfq_data*, %struct.cfq_queue*, i32) #1

declare dso_local i32 @cfq_mark_cfqq_slice_new(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
