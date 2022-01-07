; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_region_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_region_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dm_rh_client* }
%struct.dm_rh_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i32, i32)* @region_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @region_state(%struct.raid_set* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_rh_client*, align 8
  %8 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %10 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dm_rh_client*, %struct.dm_rh_client** %11, align 8
  store %struct.dm_rh_client* %12, %struct.dm_rh_client** %7, align 8
  %13 = load %struct.dm_rh_client*, %struct.dm_rh_client** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dm_rh_sector_to_region(%struct.dm_rh_client* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.dm_rh_client*, %struct.dm_rh_client** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dm_rh_get_state(%struct.dm_rh_client* %16, i32 %17, i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @dm_rh_sector_to_region(%struct.dm_rh_client*, i32) #1

declare dso_local i32 @dm_rh_get_state(%struct.dm_rh_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
