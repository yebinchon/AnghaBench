; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_swap_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_swap_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.queue_limits }
%struct.queue_limits = type { i32 }
%struct.dm_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_table* @dm_swap_table(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.dm_table*, align 8
  %7 = alloca %struct.queue_limits, align 4
  %8 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_table* %1, %struct.dm_table** %4, align 8
  store %struct.dm_table* null, %struct.dm_table** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.dm_table* @ERR_PTR(i32 %10)
  store %struct.dm_table* %11, %struct.dm_table** %6, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %13 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %16 = call i32 @dm_suspended_md(%struct.mapped_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %21 = call i64 @dm_table_has_no_data_devices(%struct.dm_table* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %25 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %24)
  store %struct.dm_table* %25, %struct.dm_table** %5, align 8
  %26 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %27 = icmp ne %struct.dm_table* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %30 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast %struct.queue_limits* %7 to i8*
  %34 = bitcast %struct.queue_limits* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %37 = call i32 @dm_table_put(%struct.dm_table* %36)
  br label %38

38:                                               ; preds = %35, %19
  %39 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %40 = icmp ne %struct.dm_table* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %43 = call i32 @dm_calculate_queue_limits(%struct.dm_table* %42, %struct.queue_limits* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.dm_table* @ERR_PTR(i32 %47)
  store %struct.dm_table* %48, %struct.dm_table** %6, align 8
  br label %54

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %52 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %53 = call %struct.dm_table* @__bind(%struct.mapped_device* %51, %struct.dm_table* %52, %struct.queue_limits* %7)
  store %struct.dm_table* %53, %struct.dm_table** %6, align 8
  br label %54

54:                                               ; preds = %50, %46, %18
  %55 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  ret %struct.dm_table* %58
}

declare dso_local %struct.dm_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_table_has_no_data_devices(%struct.dm_table*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_calculate_queue_limits(%struct.dm_table*, %struct.queue_limits*) #1

declare dso_local %struct.dm_table* @__bind(%struct.mapped_device*, %struct.dm_table*, %struct.queue_limits*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
