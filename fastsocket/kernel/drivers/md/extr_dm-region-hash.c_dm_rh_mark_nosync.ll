; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_mark_nosync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_mark_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32, i32, %struct.dm_dirty_log* }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*, i32, i32)* }
%struct.bio = type { i32 }
%struct.dm_region = type { i64, i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@DM_RH_RECOVERING = common dso_local global i64 0, align 8
@DM_RH_NOSYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_mark_nosync(%struct.dm_region_hash* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_dirty_log*, align 8
  %7 = alloca %struct.dm_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %11 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %10, i32 0, i32 3
  %12 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %11, align 8
  store %struct.dm_dirty_log* %12, %struct.dm_dirty_log** %6, align 8
  %13 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call i32 @dm_rh_bio_to_region(%struct.dm_region_hash* %13, %struct.bio* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BIO_FLUSH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %24 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BIO_DISCARD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %35 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dm_dirty_log*, i32, i32)*, i32 (%struct.dm_dirty_log*, i32, i32)** %37, align 8
  %39 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 %38(%struct.dm_dirty_log* %39, i32 %40, i32 0)
  %42 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %43 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %42, i32 0, i32 2
  %44 = call i32 @read_lock(i32* %43)
  %45 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.dm_region* @__rh_find(%struct.dm_region_hash* %45, i32 %46)
  store %struct.dm_region* %47, %struct.dm_region** %7, align 8
  %48 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %49 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %48, i32 0, i32 2
  %50 = call i32 @read_unlock(i32* %49)
  %51 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %52 = icmp ne %struct.dm_region* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %57 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %56, i32 0, i32 1
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %64 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %63, i32 0, i32 1
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %68 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DM_RH_RECOVERING, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* @DM_RH_NOSYNC, align 8
  %74 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %75 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %77 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %76, i32 0, i32 1
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %84 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %83, i32 0, i32 1
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %33
  %90 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %91 = call i32 @complete_resync_work(%struct.dm_region* %90, i32 0)
  br label %92

92:                                               ; preds = %22, %32, %89, %33
  ret void
}

declare dso_local i32 @dm_rh_bio_to_region(%struct.dm_region_hash*, %struct.bio*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_find(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete_resync_work(%struct.dm_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
