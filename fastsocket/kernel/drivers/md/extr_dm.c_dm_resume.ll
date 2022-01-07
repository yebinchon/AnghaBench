; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32 }
%struct.dm_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMF_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_resume(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  store %struct.dm_table* null, %struct.dm_table** %4, align 8
  %7 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %8 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %11 = call i32 @dm_suspended_md(%struct.mapped_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %16 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %15)
  store %struct.dm_table* %16, %struct.dm_table** %4, align 8
  %17 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %18 = icmp ne %struct.dm_table* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %21 = call i32 @dm_table_get_size(%struct.dm_table* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %14
  br label %50

24:                                               ; preds = %19
  %25 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %26 = call i32 @dm_table_resume_targets(%struct.dm_table* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %32 = call i32 @dm_queue_flush(%struct.mapped_device* %31)
  %33 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %34 = call i64 @dm_request_based(%struct.mapped_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %38 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @start_queue(i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %43 = call i32 @unlock_fs(%struct.mapped_device* %42)
  %44 = load i32, i32* @DMF_SUSPENDED, align 4
  %45 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %46 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %49 = call i32 @dm_table_unplug_all(%struct.dm_table* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %29, %23, %13
  %51 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %52 = call i32 @dm_table_put(%struct.dm_table* %51)
  %53 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %54 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i32 @dm_table_resume_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_queue_flush(%struct.mapped_device*) #1

declare dso_local i64 @dm_request_based(%struct.mapped_device*) #1

declare dso_local i32 @start_queue(i32) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dm_table_unplug_all(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
