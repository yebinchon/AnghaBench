; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merge_cfqqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merge_cfqqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_queue = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"merging with queue %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_data*, %struct.cfq_io_context*, %struct.cfq_queue*)* @cfq_merge_cfqqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @cfq_merge_cfqqs(%struct.cfq_data* %0, %struct.cfq_io_context* %1, %struct.cfq_queue* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_io_context*, align 8
  %6 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_io_context* %1, %struct.cfq_io_context** %5, align 8
  store %struct.cfq_queue* %2, %struct.cfq_queue** %6, align 8
  %7 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %10 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cfq_log_cfqq(%struct.cfq_data* %7, %struct.cfq_queue* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %15 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cic_set_cfqq(%struct.cfq_io_context* %13, i32 %16, i32 1)
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %19 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cfq_mark_cfqq_coop(i32 %20)
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %6, align 8
  %23 = call i32 @cfq_put_queue(%struct.cfq_queue* %22)
  %24 = load %struct.cfq_io_context*, %struct.cfq_io_context** %5, align 8
  %25 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context* %24, i32 1)
  ret %struct.cfq_queue* %25
}

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i32) #1

declare dso_local i32 @cic_set_cfqq(%struct.cfq_io_context*, i32, i32) #1

declare dso_local i32 @cfq_mark_cfqq_coop(i32) #1

declare dso_local i32 @cfq_put_queue(%struct.cfq_queue*) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
