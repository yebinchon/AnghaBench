; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_get_live_or_inactive_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_get_live_or_inactive_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32 }

@DM_QUERY_INACTIVE_TABLE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_table* (%struct.mapped_device*, %struct.dm_ioctl*)* @dm_get_live_or_inactive_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_table* @dm_get_live_or_inactive_table(%struct.mapped_device* %0, %struct.dm_ioctl* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_ioctl*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %4, align 8
  %5 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %6 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DM_QUERY_INACTIVE_TABLE_FLAG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %13 = call %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device* %12)
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %16 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi %struct.dm_table* [ %13, %11 ], [ %16, %14 ]
  ret %struct.dm_table* %18
}

declare dso_local %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
