; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32*, %struct.TYPE_7__*, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MTIP_PF_SVC_THD_STOP_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@rssd_index_lock = common dso_local global i32 0, align 4
@rssd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_remove(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @MTIP_PF_SVC_THD_STOP_BIT, align 4
  %10 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = call i32 @set_bit(i32 %9, i32* %13)
  %15 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @wake_up_interruptible(i32* %18)
  %20 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @kthread_stop(i64 %22)
  br label %24

24:                                               ; preds = %8, %1
  %25 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %26 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %27 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call %struct.TYPE_8__* @disk_to_dev(%struct.TYPE_7__* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = call %struct.kobject* @kobject_get(i32* %35)
  store %struct.kobject* %36, %struct.kobject** %3, align 8
  %37 = load %struct.kobject*, %struct.kobject** %3, align 8
  %38 = icmp ne %struct.kobject* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %41 = load %struct.kobject*, %struct.kobject** %3, align 8
  %42 = call i32 @mtip_hw_sysfs_exit(%struct.driver_data* %40, %struct.kobject* %41)
  %43 = load %struct.kobject*, %struct.kobject** %3, align 8
  %44 = call i32 @kobject_put(%struct.kobject* %43)
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %48 = call i32 @mtip_hw_debugfs_exit(%struct.driver_data* %47)
  %49 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %50 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %55 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @del_gendisk(%struct.TYPE_7__* %63)
  br label %70

65:                                               ; preds = %53
  %66 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %67 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @put_disk(%struct.TYPE_7__* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %46
  %72 = call i32 @spin_lock(i32* @rssd_index_lock)
  %73 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %74 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ida_remove(i32* @rssd_index_ida, i32 %75)
  %77 = call i32 @spin_unlock(i32* @rssd_index_lock)
  %78 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %79 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @blk_cleanup_queue(i32* %80)
  %82 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %83 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %82, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %83, align 8
  %84 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %85 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %87 = call i32 @mtip_hw_exit(%struct.driver_data* %86)
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local %struct.TYPE_8__* @disk_to_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @mtip_hw_sysfs_exit(%struct.driver_data*, %struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @mtip_hw_debugfs_exit(%struct.driver_data*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_7__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @mtip_hw_exit(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
