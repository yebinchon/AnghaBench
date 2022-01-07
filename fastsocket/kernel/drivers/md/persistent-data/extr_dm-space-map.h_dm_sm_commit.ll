; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map.h_dm_sm_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map.h_dm_sm_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_space_map = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_space_map*)* @dm_sm_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_sm_commit(%struct.dm_space_map* %0) #0 {
  %2 = alloca %struct.dm_space_map*, align 8
  store %struct.dm_space_map* %0, %struct.dm_space_map** %2, align 8
  %3 = load %struct.dm_space_map*, %struct.dm_space_map** %2, align 8
  %4 = getelementptr inbounds %struct.dm_space_map, %struct.dm_space_map* %3, i32 0, i32 0
  %5 = bitcast {}** %4 to i32 (%struct.dm_space_map*)**
  %6 = load i32 (%struct.dm_space_map*)*, i32 (%struct.dm_space_map*)** %5, align 8
  %7 = load %struct.dm_space_map*, %struct.dm_space_map** %2, align 8
  %8 = call i32 %6(%struct.dm_space_map* %7)
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
