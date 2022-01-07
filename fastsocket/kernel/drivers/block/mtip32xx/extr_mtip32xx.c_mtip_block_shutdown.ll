; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Shutting down %s ...\0A\00", align 1
@rssd_index_lock = common dso_local global i32 0, align 4
@rssd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_shutdown(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %4 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %3, i32 0, i32 2
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %19 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %7
  %25 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %26 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @del_gendisk(%struct.TYPE_5__* %27)
  %29 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %30 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @blk_cleanup_queue(i32* %31)
  br label %38

33:                                               ; preds = %7
  %34 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @put_disk(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %40 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %39, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %42 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %38, %1
  %44 = call i32 @spin_lock(i32* @rssd_index_lock)
  %45 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ida_remove(i32* @rssd_index_ida, i32 %47)
  %49 = call i32 @spin_unlock(i32* @rssd_index_lock)
  %50 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %51 = call i32 @mtip_hw_shutdown(%struct.driver_data* %50)
  ret i32 0
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_5__*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mtip_hw_shutdown(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
