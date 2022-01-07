; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_lld_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_lld_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*)* @dm_lld_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_lld_busy(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  store %struct.mapped_device* %8, %struct.mapped_device** %4, align 8
  %9 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %10 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %9)
  store %struct.dm_table* %10, %struct.dm_table** %5, align 8
  %11 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %12 = icmp ne %struct.dm_table* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %15 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %16 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  store i32 1, i32* %3, align 4
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %22 = call i32 @dm_table_any_busy_target(%struct.dm_table* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %25 = call i32 @dm_table_put(%struct.dm_table* %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dm_table_any_busy_target(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
