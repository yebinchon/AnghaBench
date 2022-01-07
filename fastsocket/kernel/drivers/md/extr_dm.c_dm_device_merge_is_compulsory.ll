; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_device_merge_is_compulsory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_device_merge_is_compulsory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_dev = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* @dm_device_merge_is_compulsory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_device_merge_is_compulsory(%struct.dm_target* %0, %struct.dm_dev* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.block_device*, align 8
  %12 = alloca %struct.request_queue*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.dm_dev* %1, %struct.dm_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.dm_dev*, %struct.dm_dev** %7, align 8
  %14 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %13, i32 0, i32 0
  %15 = load %struct.block_device*, %struct.block_device** %14, align 8
  store %struct.block_device* %15, %struct.block_device** %11, align 8
  %16 = load %struct.block_device*, %struct.block_device** %11, align 8
  %17 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %16)
  store %struct.request_queue* %17, %struct.request_queue** %12, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %19 = call i32 @dm_queue_merge_is_compulsory(%struct.request_queue* %18)
  ret i32 %19
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @dm_queue_merge_is_compulsory(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
