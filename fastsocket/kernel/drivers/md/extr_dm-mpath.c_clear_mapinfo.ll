; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_clear_mapinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_clear_mapinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32 }
%union.map_info = type { %struct.dm_mpath_io* }
%struct.dm_mpath_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath*, %union.map_info*)* @clear_mapinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_mapinfo(%struct.multipath* %0, %union.map_info* %1) #0 {
  %3 = alloca %struct.multipath*, align 8
  %4 = alloca %union.map_info*, align 8
  %5 = alloca %struct.dm_mpath_io*, align 8
  store %struct.multipath* %0, %struct.multipath** %3, align 8
  store %union.map_info* %1, %union.map_info** %4, align 8
  %6 = load %union.map_info*, %union.map_info** %4, align 8
  %7 = bitcast %union.map_info* %6 to %struct.dm_mpath_io**
  %8 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %7, align 8
  store %struct.dm_mpath_io* %8, %struct.dm_mpath_io** %5, align 8
  %9 = load %union.map_info*, %union.map_info** %4, align 8
  %10 = bitcast %union.map_info* %9 to %struct.dm_mpath_io**
  store %struct.dm_mpath_io* null, %struct.dm_mpath_io** %10, align 8
  %11 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %5, align 8
  %12 = load %struct.multipath*, %struct.multipath** %3, align 8
  %13 = getelementptr inbounds %struct.multipath, %struct.multipath* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mempool_free(%struct.dm_mpath_io* %11, i32 %14)
  ret void
}

declare dso_local i32 @mempool_free(%struct.dm_mpath_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
