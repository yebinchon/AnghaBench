; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_free_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, %struct.TYPE_5__*, i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@_minor_lock = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*)* @free_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dev(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %4 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %5 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = call i32 @disk_devt(%struct.TYPE_5__* %6)
  %8 = call i32 @MINOR(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %10 = call i32 @unlock_fs(%struct.mapped_device* %9)
  %11 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %12 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bdput(i32 %13)
  %15 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %16 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @destroy_workqueue(i32 %17)
  %19 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %20 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mempool_destroy(i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %30 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %35 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mempool_destroy(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %40 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %45 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @bioset_free(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %50 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @blk_integrity_unregister(%struct.TYPE_5__* %51)
  %53 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %54 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @del_gendisk(%struct.TYPE_5__* %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @free_minor(i32 %57)
  %59 = call i32 @spin_lock(i32* @_minor_lock)
  %60 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %61 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = call i32 @spin_unlock(i32* @_minor_lock)
  %65 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %66 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = call i32 @put_disk(%struct.TYPE_5__* %67)
  %69 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %70 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @blk_cleanup_queue(i32 %71)
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = call i32 @module_put(i32 %73)
  %75 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %76 = call i32 @kfree(%struct.mapped_device* %75)
  ret void
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(%struct.TYPE_5__*) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

declare dso_local i32 @bdput(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @bioset_free(i64) #1

declare dso_local i32 @blk_integrity_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_5__*) #1

declare dso_local i32 @free_minor(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
