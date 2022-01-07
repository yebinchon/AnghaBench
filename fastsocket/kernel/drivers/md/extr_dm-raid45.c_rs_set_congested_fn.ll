; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_set_congested_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_set_congested_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mapped_device = type { i32 }
%struct.backing_dev_info = type { %struct.raid_set*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.backing_dev_info }

@rs_congested = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @rs_set_congested_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_congested_fn(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.backing_dev_info*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %5 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %6 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mapped_device* @dm_table_get_md(i32 %9)
  store %struct.mapped_device* %10, %struct.mapped_device** %3, align 8
  %11 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %12 = call %struct.TYPE_6__* @dm_disk(%struct.mapped_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.backing_dev_info* %15, %struct.backing_dev_info** %4, align 8
  %16 = load i32, i32* @rs_congested, align 4
  %17 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %18 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %21 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %20, i32 0, i32 0
  store %struct.raid_set* %19, %struct.raid_set** %21, align 8
  %22 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %23 = call i32 @dm_put(%struct.mapped_device* %22)
  ret void
}

declare dso_local %struct.mapped_device* @dm_table_get_md(i32) #1

declare dso_local %struct.TYPE_6__* @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
