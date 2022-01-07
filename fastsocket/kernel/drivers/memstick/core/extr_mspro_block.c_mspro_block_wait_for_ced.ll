; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_wait_for_ced.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_wait_for_ced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mspro_block_data = type { i32 }

@h_mspro_block_req_init = common dso_local global i32 0, align 4
@h_mspro_block_wait_for_ced = common dso_local global i32 0, align 4
@MS_TPC_GET_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @mspro_block_wait_for_ced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_wait_for_ced(%struct.memstick_dev* %0) #0 {
  %2 = alloca %struct.memstick_dev*, align 8
  %3 = alloca %struct.mspro_block_data*, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %2, align 8
  %4 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %5 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %4)
  store %struct.mspro_block_data* %5, %struct.mspro_block_data** %3, align 8
  %6 = load i32, i32* @h_mspro_block_req_init, align 4
  %7 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %8 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @h_mspro_block_wait_for_ced, align 4
  %10 = load %struct.mspro_block_data*, %struct.mspro_block_data** %3, align 8
  %11 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %13 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 0
  %14 = load i32, i32* @MS_TPC_GET_INT, align 4
  %15 = call i32 @memstick_init_req(%struct.TYPE_2__* %13, i32 %14, i32* null, i32 1)
  %16 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %17 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memstick_new_req(i32 %18)
  %20 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %21 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %20, i32 0, i32 1
  %22 = call i32 @wait_for_completion(i32* %21)
  %23 = load %struct.memstick_dev*, %struct.memstick_dev** %2, align 8
  %24 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @memstick_init_req(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @memstick_new_req(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
