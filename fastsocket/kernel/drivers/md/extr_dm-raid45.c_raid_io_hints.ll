; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_io_hints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.queue_limits = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @raid_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  store %struct.raid_set* %8, %struct.raid_set** %5, align 8
  %9 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @blk_limits_io_min(%struct.queue_limits* %9, i32 %13)
  %15 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %16 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %17 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = call i32 @blk_limits_io_opt(%struct.queue_limits* %15, i32 %24)
  ret void
}

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
