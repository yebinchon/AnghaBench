; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_deferred_set_add_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-prison.c_dm_deferred_set_add_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_deferred_set = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_deferred_set_add_work(%struct.dm_deferred_set* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dm_deferred_set*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dm_deferred_set* %0, %struct.dm_deferred_set** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %9 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %8, i32 0, i32 2
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %13 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %16 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %21 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %24 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %61

31:                                               ; preds = %19, %2
  %32 = load %struct.list_head*, %struct.list_head** %4, align 8
  %33 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %34 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %37 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @list_add(%struct.list_head* %32, i32* %40)
  %42 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %43 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ds_next(i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %47 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %31
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %59 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %31
  br label %61

61:                                               ; preds = %60, %30
  %62 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %63 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %62, i32 0, i32 2
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(%struct.list_head*, i32*) #1

declare dso_local i32 @ds_next(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
