; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c___rh_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c___rh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region = type { i64, i32, i32, i32, i32, %struct.dm_region_hash* }
%struct.dm_region_hash = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, i32, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@DM_RH_CLEAN = common dso_local global i64 0, align 8
@DM_RH_NOSYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_region* (%struct.dm_region_hash*, i32)* @__rh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_region* @__rh_alloc(%struct.dm_region_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region*, align 8
  %6 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %8 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.dm_region* @mempool_alloc(i32 %9, i32 %10)
  store %struct.dm_region* %11, %struct.dm_region** %6, align 8
  %12 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %13 = icmp ne %struct.dm_region* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = load i32, i32* @__GFP_NOFAIL, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dm_region* @kmalloc(i32 32, i32 %21)
  store %struct.dm_region* %22, %struct.dm_region** %6, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %25 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_4__*, i32, i32)*, i64 (%struct.TYPE_4__*, i32, i32)** %29, align 8
  %31 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %32 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 %30(%struct.TYPE_4__* %33, i32 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i64, i64* @DM_RH_CLEAN, align 8
  br label %41

39:                                               ; preds = %23
  %40 = load i64, i64* @DM_RH_NOSYNC, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %44 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %46 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %47 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %46, i32 0, i32 5
  store %struct.dm_region_hash* %45, %struct.dm_region_hash** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %50 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %52 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %55 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %54, i32 0, i32 3
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %58 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %57, i32 0, i32 2
  %59 = call i32 @bio_list_init(i32* %58)
  %60 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %61 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %60, i32 0, i32 0
  %62 = call i32 @write_lock_irq(i32* %61)
  %63 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call %struct.dm_region* @__rh_lookup(%struct.dm_region_hash* %63, i32 %64)
  store %struct.dm_region* %65, %struct.dm_region** %5, align 8
  %66 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %67 = icmp ne %struct.dm_region* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %41
  %69 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %70 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %71 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mempool_free(%struct.dm_region* %69, i32 %72)
  br label %97

74:                                               ; preds = %41
  %75 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %76 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %77 = call i32 @__rh_insert(%struct.dm_region_hash* %75, %struct.dm_region* %76)
  %78 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %79 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DM_RH_CLEAN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %85 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %84, i32 0, i32 1
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %88 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %87, i32 0, i32 1
  %89 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %90 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %89, i32 0, i32 2
  %91 = call i32 @list_add(i32* %88, i32* %90)
  %92 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %93 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock(i32* %93)
  br label %95

95:                                               ; preds = %83, %74
  %96 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  store %struct.dm_region* %96, %struct.dm_region** %5, align 8
  br label %97

97:                                               ; preds = %95, %68
  %98 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %99 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %98, i32 0, i32 0
  %100 = call i32 @write_unlock_irq(i32* %99)
  %101 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  ret %struct.dm_region* %101
}

declare dso_local %struct.dm_region* @mempool_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_region* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local %struct.dm_region* @__rh_lookup(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @mempool_free(%struct.dm_region*, i32) #1

declare dso_local i32 @__rh_insert(%struct.dm_region_hash*, %struct.dm_region*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
