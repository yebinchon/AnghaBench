; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_rq_fmerge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_rq_fmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.request = type { i32 }
%struct.cfq_data = type { i32 }
%struct.bio = type { i64 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_queue = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.cfq_data*, %struct.bio*)* @cfq_find_rq_fmerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @cfq_find_rq_fmerge(%struct.cfq_data* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.cfq_io_context*, align 8
  %8 = alloca %struct.cfq_queue*, align 8
  %9 = alloca i64, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %11, i32 %14)
  store %struct.cfq_io_context* %15, %struct.cfq_io_context** %7, align 8
  %16 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %17 = icmp ne %struct.cfq_io_context* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.request* null, %struct.request** %3, align 8
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call i32 @cfq_bio_sync(%struct.bio* %21)
  %23 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context* %20, i32 %22)
  store %struct.cfq_queue* %23, %struct.cfq_queue** %8, align 8
  %24 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %25 = icmp ne %struct.cfq_queue* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i64 @bio_sectors(%struct.bio* %30)
  %32 = add nsw i64 %29, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %8, align 8
  %34 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.request* @elv_rb_find(i32* %34, i64 %35)
  store %struct.request* %36, %struct.request** %3, align 8
  br label %38

37:                                               ; preds = %19
  store %struct.request* null, %struct.request** %3, align 8
  br label %38

38:                                               ; preds = %37, %26, %18
  %39 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %39
}

declare dso_local %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data*, i32) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context*, i32) #1

declare dso_local i32 @cfq_bio_sync(%struct.bio*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.request* @elv_rb_find(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
