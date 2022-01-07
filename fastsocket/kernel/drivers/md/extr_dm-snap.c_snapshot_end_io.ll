; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32 }
%struct.bio = type { i32 }
%union.map_info = type { %struct.dm_snap_tracked_chunk* }
%struct.dm_snap_tracked_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32, %union.map_info*)* @snapshot_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_end_io(%struct.dm_target* %0, %struct.bio* %1, i32 %2, %union.map_info* %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.map_info*, align 8
  %9 = alloca %struct.dm_snapshot*, align 8
  %10 = alloca %struct.dm_snap_tracked_chunk*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.map_info* %3, %union.map_info** %8, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  store %struct.dm_snapshot* %13, %struct.dm_snapshot** %9, align 8
  %14 = load %union.map_info*, %union.map_info** %8, align 8
  %15 = bitcast %union.map_info* %14 to %struct.dm_snap_tracked_chunk**
  %16 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %15, align 8
  store %struct.dm_snap_tracked_chunk* %16, %struct.dm_snap_tracked_chunk** %10, align 8
  %17 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %10, align 8
  %18 = icmp ne %struct.dm_snap_tracked_chunk* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %21 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %10, align 8
  %22 = call i32 @stop_tracking_chunk(%struct.dm_snapshot* %20, %struct.dm_snap_tracked_chunk* %21)
  br label %23

23:                                               ; preds = %19, %4
  ret i32 0
}

declare dso_local i32 @stop_tracking_chunk(%struct.dm_snapshot*, %struct.dm_snap_tracked_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
