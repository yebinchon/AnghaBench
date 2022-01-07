; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mspro_block_data = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"mspro block remove\0A\00", align 1
@mspro_block_disk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_dev*)* @mspro_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspro_block_remove(%struct.memstick_dev* %0) #0 {
  %2 = alloca %struct.memstick_dev*, align 8
  %3 = alloca %struct.mspro_block_data*, align 8
  %4 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %2, align 8
  %5 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %6 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %5)
  store %struct.mspro_block_data* %6, %struct.mspro_block_data** %3, align 8
  %7 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %8 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @del_gendisk(i32 %9)
  %11 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %12 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %15 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %14, i32 0, i32 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %19 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %21 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @blk_start_queue(i32* %22)
  %24 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %25 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %24, i32 0, i32 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %29 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @blk_cleanup_queue(i32* %30)
  %32 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %33 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %35 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %38 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %37, i32 0, i32 2
  %39 = call i32 @sysfs_remove_group(i32* %36, i32* %38)
  %40 = call i32 @mutex_lock(i32* @mspro_block_disk_lock)
  %41 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %42 = call i32 @mspro_block_data_clear(%struct.mspro_block_data* %41)
  %43 = call i32 @mutex_unlock(i32* @mspro_block_disk_lock)
  %44 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %45 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mspro_block_disk_release(i32 %46)
  %48 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %49 = call i32 @memstick_set_drvdata(%struct.memstick_dev* %48, i32* null)
  ret void
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_start_queue(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mspro_block_data_clear(%struct.mspro_block_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mspro_block_disk_release(i32) #1

declare dso_local i32 @memstick_set_drvdata(%struct.memstick_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
