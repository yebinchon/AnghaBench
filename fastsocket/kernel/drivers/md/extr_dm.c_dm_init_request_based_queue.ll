; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_init_request_based_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_init_request_based_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.request_queue* }
%struct.request_queue = type { i64 }

@dm_request_fn = common dso_local global i32 0, align 4
@dm_softirq_done = common dso_local global i32 0, align 4
@dm_prep_fn = common dso_local global i32 0, align 4
@dm_lld_busy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*)* @dm_init_request_based_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_init_request_based_queue(%struct.mapped_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.request_queue* null, %struct.request_queue** %4, align 8
  %5 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %6 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %5, i32 0, i32 0
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 0
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %16 = load i32, i32* @dm_request_fn, align 4
  %17 = call %struct.request_queue* @blk_init_allocated_queue(%struct.request_queue* %15, i32 %16, i32* null)
  store %struct.request_queue* %17, %struct.request_queue** %4, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = icmp ne %struct.request_queue* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

21:                                               ; preds = %12
  %22 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %24 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %23, i32 0, i32 0
  store %struct.request_queue* %22, %struct.request_queue** %24, align 8
  %25 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %26 = call i32 @dm_init_md_queue(%struct.mapped_device* %25)
  %27 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %28 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %27, i32 0, i32 0
  %29 = load %struct.request_queue*, %struct.request_queue** %28, align 8
  %30 = load i32, i32* @dm_softirq_done, align 4
  %31 = call i32 @blk_queue_softirq_done(%struct.request_queue* %29, i32 %30)
  %32 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %33 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %32, i32 0, i32 0
  %34 = load %struct.request_queue*, %struct.request_queue** %33, align 8
  %35 = load i32, i32* @dm_prep_fn, align 4
  %36 = call i32 @blk_queue_prep_rq(%struct.request_queue* %34, i32 %35)
  %37 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %38 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %37, i32 0, i32 0
  %39 = load %struct.request_queue*, %struct.request_queue** %38, align 8
  %40 = load i32, i32* @dm_lld_busy, align 4
  %41 = call i32 @blk_queue_lld_busy(%struct.request_queue* %39, i32 %40)
  %42 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %43 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %42, i32 0, i32 0
  %44 = load %struct.request_queue*, %struct.request_queue** %43, align 8
  %45 = call i32 @elv_register_queue(%struct.request_queue* %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %21, %20, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.request_queue* @blk_init_allocated_queue(%struct.request_queue*, i32, i32*) #1

declare dso_local i32 @dm_init_md_queue(%struct.mapped_device*) #1

declare dso_local i32 @blk_queue_softirq_done(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_prep_rq(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_lld_busy(%struct.request_queue*, i32) #1

declare dso_local i32 @elv_register_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
