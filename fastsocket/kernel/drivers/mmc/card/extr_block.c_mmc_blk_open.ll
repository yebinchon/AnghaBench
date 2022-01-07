; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.mmc_blk_data = type { i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @mmc_blk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_blk_data*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mmc_blk_data* @mmc_blk_get(i32 %9)
  store %struct.mmc_blk_data* %10, %struct.mmc_blk_data** %5, align 8
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %14 = icmp ne %struct.mmc_blk_data* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.block_device*, %struct.block_device** %3, align 8
  %22 = call i32 @check_disk_change(%struct.block_device* %21)
  br label %23

23:                                               ; preds = %20, %15
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FMODE_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %35 = call i32 @mmc_blk_put(%struct.mmc_blk_data* %34)
  %36 = load i32, i32* @EROFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %28, %23
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.mmc_blk_data* @mmc_blk_get(i32) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @mmc_blk_put(%struct.mmc_blk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
