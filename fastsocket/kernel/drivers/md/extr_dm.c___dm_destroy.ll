; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___dm_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___dm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32 }
%struct.dm_table = type { i32 }

@_minor_lock = common dso_local global i32 0, align 4
@_minor_idr = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global i32 0, align 4
@DMF_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: Forcibly removing mapped_device still in use! (%d users)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, i32)* @__dm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_destroy(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = call i32 @spin_lock(i32* @_minor_lock)
  %8 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %9 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %8)
  store %struct.dm_table* %9, %struct.dm_table** %5, align 8
  %10 = load i32, i32* @MINOR_ALLOCED, align 4
  %11 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %12 = call i32 @dm_disk(%struct.mapped_device* %11)
  %13 = call i32 @disk_devt(i32 %12)
  %14 = call i32 @MINOR(i32 %13)
  %15 = call i32 @idr_replace(i32* @_minor_idr, i32 %10, i32 %14)
  %16 = load i32, i32* @DMF_FREEING, align 4
  %17 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %18 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = call i32 @spin_unlock(i32* @_minor_lock)
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = call i32 @dm_suspended_md(%struct.mapped_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %26 = call i32 @dm_table_presuspend_targets(%struct.dm_table* %25)
  %27 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %28 = call i32 @dm_table_postsuspend_targets(%struct.dm_table* %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %38, %32
  %34 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %35 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @msleep(i32 1)
  br label %33

40:                                               ; preds = %33
  br label %54

41:                                               ; preds = %29
  %42 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %43 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %42, i32 0, i32 0
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %48 = call i32 @dm_device_name(%struct.mapped_device* %47)
  %49 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %50 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %49, i32 0, i32 0
  %51 = call i64 @atomic_read(i32* %50)
  %52 = call i32 @DMWARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %56 = call i32 @dm_sysfs_exit(%struct.mapped_device* %55)
  %57 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %58 = call i32 @dm_table_put(%struct.dm_table* %57)
  %59 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %60 = call i32 @__unbind(%struct.mapped_device* %59)
  %61 = call i32 @dm_table_destroy(i32 %60)
  %62 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %63 = call i32 @free_dev(%struct.mapped_device* %62)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i32 @idr_replace(i32*, i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_presuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_table_postsuspend_targets(%struct.dm_table*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DMWARN(i8*, i32, i64) #1

declare dso_local i32 @dm_device_name(%struct.mapped_device*) #1

declare dso_local i32 @dm_sysfs_exit(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_table_destroy(i32) #1

declare dso_local i32 @__unbind(%struct.mapped_device*) #1

declare dso_local i32 @free_dev(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
