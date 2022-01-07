; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.request = type { i32 }
%union.map_info = type { i32 }
%struct.multipath = type { i32 }

@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.request*, %union.map_info*)* @multipath_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_map(%struct.dm_target* %0, %struct.request* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.multipath*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.multipath*
  store %struct.multipath* %13, %struct.multipath** %9, align 8
  %14 = load %struct.multipath*, %struct.multipath** %9, align 8
  %15 = load %union.map_info*, %union.map_info** %7, align 8
  %16 = call i64 @set_mapinfo(%struct.multipath* %14, %union.map_info* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.multipath*, %struct.multipath** %9, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = load %union.map_info*, %union.map_info** %7, align 8
  %29 = call i32 @map_io(%struct.multipath* %26, %struct.request* %27, %union.map_info* %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %20
  %37 = load %struct.multipath*, %struct.multipath** %9, align 8
  %38 = load %union.map_info*, %union.map_info** %7, align 8
  %39 = call i32 @clear_mapinfo(%struct.multipath* %37, %union.map_info* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @set_mapinfo(%struct.multipath*, %union.map_info*) #1

declare dso_local i32 @map_io(%struct.multipath*, %struct.request*, %union.map_info*, i32) #1

declare dso_local i32 @clear_mapinfo(%struct.multipath*, %union.map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
