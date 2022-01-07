; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, %struct.dm_table*, i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.dm_table = type { i32 }
%struct.queue_limits = type { i32 }

@event_callback = common dso_local global i32 0, align 4
@DMF_MERGE_IS_OPTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_table* (%struct.mapped_device*, %struct.dm_table*, %struct.queue_limits*)* @__bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_table* @__bind(%struct.mapped_device* %0, %struct.dm_table* %1, %struct.queue_limits* %2) #0 {
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.queue_limits*, align 8
  %7 = alloca %struct.dm_table*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  store %struct.queue_limits* %2, %struct.queue_limits** %6, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %13 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %12, i32 0, i32 6
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %8, align 8
  %15 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %16 = call i64 @dm_table_get_size(%struct.dm_table* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %19 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_capacity(i32 %20)
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 4
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @__set_size(%struct.mapped_device* %28, i64 %29)
  %31 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %32 = load i32, i32* @event_callback, align 4
  %33 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %34 = call i32 @dm_table_event_callback(%struct.dm_table* %31, i32 %32, %struct.mapped_device* %33)
  %35 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %36 = call i64 @dm_table_request_based(%struct.dm_table* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %40 = call i32 @blk_queue_stopped(%struct.request_queue* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %44 = call i32 @stop_queue(%struct.request_queue* %43)
  br label %45

45:                                               ; preds = %42, %38, %27
  %46 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %47 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %48 = call i32 @__bind_mempools(%struct.mapped_device* %46, %struct.dm_table* %47)
  %49 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %50 = call i32 @dm_table_merge_is_optional(%struct.dm_table* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %52 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @write_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 3
  %57 = load %struct.dm_table*, %struct.dm_table** %56, align 8
  store %struct.dm_table* %57, %struct.dm_table** %7, align 8
  %58 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %59 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %60 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %59, i32 0, i32 3
  store %struct.dm_table* %58, %struct.dm_table** %60, align 8
  %61 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %62 = call i32 @dm_table_get_immutable_target_type(%struct.dm_table* %61)
  %63 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %64 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %66 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %67 = load %struct.queue_limits*, %struct.queue_limits** %6, align 8
  %68 = call i32 @dm_table_set_restrictions(%struct.dm_table* %65, %struct.request_queue* %66, %struct.queue_limits* %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %45
  %72 = load i32, i32* @DMF_MERGE_IS_OPTIONAL, align 4
  %73 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %74 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %81

76:                                               ; preds = %45
  %77 = load i32, i32* @DMF_MERGE_IS_OPTIONAL, align 4
  %78 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %79 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %78, i32 0, i32 1
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %83 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %82, i32 0, i32 0
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @write_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.dm_table*, %struct.dm_table** %7, align 8
  ret %struct.dm_table* %86
}

declare dso_local i64 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @__set_size(%struct.mapped_device*, i64) #1

declare dso_local i32 @dm_table_event_callback(%struct.dm_table*, i32, %struct.mapped_device*) #1

declare dso_local i64 @dm_table_request_based(%struct.dm_table*) #1

declare dso_local i32 @blk_queue_stopped(%struct.request_queue*) #1

declare dso_local i32 @stop_queue(%struct.request_queue*) #1

declare dso_local i32 @__bind_mempools(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i32 @dm_table_merge_is_optional(%struct.dm_table*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dm_table_get_immutable_target_type(%struct.dm_table*) #1

declare dso_local i32 @dm_table_set_restrictions(%struct.dm_table*, %struct.request_queue*, %struct.queue_limits*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
