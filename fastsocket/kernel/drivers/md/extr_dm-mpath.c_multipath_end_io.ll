; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.multipath* }
%struct.multipath = type { i32 }
%struct.request = type { i32 }
%union.map_info = type { %struct.dm_mpath_io* }
%struct.dm_mpath_io = type { i32, %struct.pgpath* }
%struct.pgpath = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.path_selector }
%struct.path_selector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.path_selector*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.request*, i32, %union.map_info*)* @multipath_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_end_io(%struct.dm_target* %0, %struct.request* %1, i32 %2, %union.map_info* %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.map_info*, align 8
  %9 = alloca %struct.multipath*, align 8
  %10 = alloca %struct.dm_mpath_io*, align 8
  %11 = alloca %struct.pgpath*, align 8
  %12 = alloca %struct.path_selector*, align 8
  %13 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.map_info* %3, %union.map_info** %8, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.multipath*, %struct.multipath** %15, align 8
  store %struct.multipath* %16, %struct.multipath** %9, align 8
  %17 = load %union.map_info*, %union.map_info** %8, align 8
  %18 = bitcast %union.map_info* %17 to %struct.dm_mpath_io**
  %19 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %18, align 8
  store %struct.dm_mpath_io* %19, %struct.dm_mpath_io** %10, align 8
  %20 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %10, align 8
  %21 = icmp ne %struct.dm_mpath_io* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.multipath*, %struct.multipath** %9, align 8
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %10, align 8
  %29 = call i32 @do_end_io(%struct.multipath* %25, %struct.request* %26, i32 %27, %struct.dm_mpath_io* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %10, align 8
  %31 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %30, i32 0, i32 1
  %32 = load %struct.pgpath*, %struct.pgpath** %31, align 8
  store %struct.pgpath* %32, %struct.pgpath** %11, align 8
  %33 = load %struct.pgpath*, %struct.pgpath** %11, align 8
  %34 = icmp ne %struct.pgpath* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %4
  %36 = load %struct.pgpath*, %struct.pgpath** %11, align 8
  %37 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.path_selector* %39, %struct.path_selector** %12, align 8
  %40 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %41 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.path_selector*, i32*, i32)* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %48 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.path_selector*, i32*, i32)*, i32 (%struct.path_selector*, i32*, i32)** %50, align 8
  %52 = load %struct.path_selector*, %struct.path_selector** %12, align 8
  %53 = load %struct.pgpath*, %struct.pgpath** %11, align 8
  %54 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %53, i32 0, i32 0
  %55 = load %struct.dm_mpath_io*, %struct.dm_mpath_io** %10, align 8
  %56 = getelementptr inbounds %struct.dm_mpath_io, %struct.dm_mpath_io* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %51(%struct.path_selector* %52, i32* %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %35
  br label %60

60:                                               ; preds = %59, %4
  %61 = load %struct.multipath*, %struct.multipath** %9, align 8
  %62 = load %union.map_info*, %union.map_info** %8, align 8
  %63 = call i32 @clear_mapinfo(%struct.multipath* %61, %union.map_info* %62)
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_end_io(%struct.multipath*, %struct.request*, i32, %struct.dm_mpath_io*) #1

declare dso_local i32 @clear_mapinfo(%struct.multipath*, %union.map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
