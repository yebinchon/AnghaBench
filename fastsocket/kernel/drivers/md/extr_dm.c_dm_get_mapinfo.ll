; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_get_mapinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_get_mapinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.map_info = type { i32 }
%struct.bio = type { i64 }
%struct.dm_target_io = type { %union.map_info }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.map_info* @dm_get_mapinfo(%struct.bio* %0) #0 {
  %2 = alloca %union.map_info*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %4 = load %struct.bio*, %struct.bio** %3, align 8
  %5 = icmp ne %struct.bio* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dm_target_io*
  %16 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %15, i32 0, i32 0
  store %union.map_info* %16, %union.map_info** %2, align 8
  br label %18

17:                                               ; preds = %6, %1
  store %union.map_info* null, %union.map_info** %2, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %union.map_info*, %union.map_info** %2, align 8
  ret %union.map_info* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
