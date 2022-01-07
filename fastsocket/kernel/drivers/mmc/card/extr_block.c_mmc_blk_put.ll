; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_data = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@open_lock = common dso_local global i32 0, align 4
@MMC_SHIFT = common dso_local global i32 0, align 4
@dev_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_blk_data*)* @mmc_blk_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_put(%struct.mmc_blk_data* %0) #0 {
  %2 = alloca %struct.mmc_blk_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mmc_blk_data* %0, %struct.mmc_blk_data** %2, align 8
  %5 = call i32 @mutex_lock(i32* @open_lock)
  %6 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @disk_devt(%struct.TYPE_5__* %17)
  %19 = call i32 @MAJOR(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @disk_devt(%struct.TYPE_5__* %22)
  %24 = call i32 @MINOR(i32 %23)
  %25 = load i32, i32* @MMC_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %14
  %30 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MMC_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %14
  %38 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %39 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @blk_cleanup_queue(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @dev_use, align 4
  %45 = call i32 @__clear_bit(i32 %43, i32 %44)
  %46 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %47 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @put_disk(%struct.TYPE_5__* %48)
  %50 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %2, align 8
  %51 = call i32 @kfree(%struct.mmc_blk_data* %50)
  br label %52

52:                                               ; preds = %37, %1
  %53 = call i32 @mutex_unlock(i32* @open_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @disk_devt(%struct.TYPE_5__*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.mmc_blk_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
