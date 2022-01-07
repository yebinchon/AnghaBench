; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_alloc_pending_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_alloc_pending_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_snap_pending_exception* (%struct.dm_snapshot*)* @alloc_pending_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_snap_pending_exception* @alloc_pending_exception(%struct.dm_snapshot* %0) #0 {
  %2 = alloca %struct.dm_snapshot*, align 8
  %3 = alloca %struct.dm_snap_pending_exception*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %2, align 8
  %4 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %5 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_NOIO, align 4
  %8 = call %struct.dm_snap_pending_exception* @mempool_alloc(i32 %6, i32 %7)
  store %struct.dm_snap_pending_exception* %8, %struct.dm_snap_pending_exception** %3, align 8
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %10 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %9, i32 0, i32 0
  %11 = call i32 @atomic_inc(i32* %10)
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %13 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %14 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %13, i32 0, i32 0
  store %struct.dm_snapshot* %12, %struct.dm_snapshot** %14, align 8
  %15 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  ret %struct.dm_snap_pending_exception* %15
}

declare dso_local %struct.dm_snap_pending_exception* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
