; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_open_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_open_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dev_internal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.block_device*, i32 }
%struct.block_device = type { i32 }
%struct.mapped_device = type { i32 }

@open_dev._claim_ptr = internal global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [26 x i8] c"I belong to device-mapper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dev_internal*, i32, %struct.mapped_device*)* @open_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dev(%struct.dm_dev_internal* %0, i32 %1, %struct.mapped_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_dev_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_dev_internal* %0, %struct.dm_dev_internal** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mapped_device* %2, %struct.mapped_device** %7, align 8
  %10 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %11 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.block_device*, %struct.block_device** %12, align 8
  %14 = call i32 @BUG_ON(%struct.block_device* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %17 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.block_device* @open_by_devnum(i32 %15, i32 %19)
  store %struct.block_device* %20, %struct.block_device** %8, align 8
  %21 = load %struct.block_device*, %struct.block_device** %8, align 8
  %22 = call i64 @IS_ERR(%struct.block_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.block_device*, %struct.block_device** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.block_device* %25)
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load %struct.block_device*, %struct.block_device** %8, align 8
  %29 = load i8*, i8** @open_dev._claim_ptr, align 8
  %30 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %31 = call i32 @dm_disk(%struct.mapped_device* %30)
  %32 = call i32 @bd_claim_by_disk(%struct.block_device* %28, i8* %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.block_device*, %struct.block_device** %8, align 8
  %37 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %38 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @blkdev_put(%struct.block_device* %36, i32 %40)
  br label %47

42:                                               ; preds = %27
  %43 = load %struct.block_device*, %struct.block_device** %8, align 8
  %44 = load %struct.dm_dev_internal*, %struct.dm_dev_internal** %5, align 8
  %45 = getelementptr inbounds %struct.dm_dev_internal, %struct.dm_dev_internal* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.block_device* %43, %struct.block_device** %46, align 8
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @BUG_ON(%struct.block_device*) #1

declare dso_local %struct.block_device* @open_by_devnum(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local i32 @bd_claim_by_disk(%struct.block_device*, i8*, i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
