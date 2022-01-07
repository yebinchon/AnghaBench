; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.dm_region = type { i64, i32, i32, i32 }

@DM_RH_CLEAN = common dso_local global i64 0, align 8
@DM_RH_DIRTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_inc(%struct.dm_region_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %7 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %6, i32 0, i32 0
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.dm_region* @__rh_find(%struct.dm_region_hash* %9, i32 %10)
  store %struct.dm_region* %11, %struct.dm_region** %5, align 8
  %12 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %13 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %16 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %15, i32 0, i32 3
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %19 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DM_RH_CLEAN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load i64, i64* @DM_RH_DIRTY, align 8
  %25 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %26 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %28 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %27, i32 0, i32 2
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %31 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %34 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %38, align 8
  %40 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %41 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %44 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(%struct.TYPE_4__* %42, i32 %45)
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %49 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock_irq(i32* %49)
  br label %51

51:                                               ; preds = %47, %23
  %52 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %53 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %52, i32 0, i32 0
  %54 = call i32 @read_unlock(i32* %53)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_find(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
