; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_ofs_to_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_ofs_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmu_block = type { i32, i64 }
%struct.mtd_info = type { %struct.mdev_part* }
%struct.mdev_part = type { %struct.maple_device* }
%struct.maple_device = type { i32 }
%struct.memcard = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmu_block* (i64, %struct.mtd_info*, i32)* @ofs_to_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmu_block* @ofs_to_block(i64 %0, %struct.mtd_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vmu_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmu_block*, align 8
  %9 = alloca %struct.maple_device*, align 8
  %10 = alloca %struct.memcard*, align 8
  %11 = alloca %struct.mdev_part*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load %struct.mdev_part*, %struct.mdev_part** %14, align 8
  store %struct.mdev_part* %15, %struct.mdev_part** %11, align 8
  %16 = load %struct.mdev_part*, %struct.mdev_part** %11, align 8
  %17 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %16, i32 0, i32 0
  %18 = load %struct.maple_device*, %struct.maple_device** %17, align 8
  store %struct.maple_device* %18, %struct.maple_device** %9, align 8
  %19 = load %struct.maple_device*, %struct.maple_device** %9, align 8
  %20 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %19)
  store %struct.memcard* %20, %struct.memcard** %10, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.memcard*, %struct.memcard** %10, align 8
  %23 = getelementptr inbounds %struct.memcard, %struct.memcard* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.memcard*, %struct.memcard** %10, align 8
  %31 = getelementptr inbounds %struct.memcard, %struct.memcard* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %29, %32
  %34 = icmp uge i64 %21, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %73

36:                                               ; preds = %3
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.memcard*, %struct.memcard** %10, align 8
  %39 = getelementptr inbounds %struct.memcard, %struct.memcard* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = udiv i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.memcard*, %struct.memcard** %10, align 8
  %46 = getelementptr inbounds %struct.memcard, %struct.memcard* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %44, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %73

55:                                               ; preds = %36
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.vmu_block* @kmalloc(i32 16, i32 %56)
  store %struct.vmu_block* %57, %struct.vmu_block** %8, align 8
  %58 = load %struct.vmu_block*, %struct.vmu_block** %8, align 8
  %59 = icmp ne %struct.vmu_block* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.vmu_block*, %struct.vmu_block** %8, align 8
  %64 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.memcard*, %struct.memcard** %10, align 8
  %67 = getelementptr inbounds %struct.memcard, %struct.memcard* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = urem i64 %65, %68
  %70 = load %struct.vmu_block*, %struct.vmu_block** %8, align 8
  %71 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.vmu_block*, %struct.vmu_block** %8, align 8
  store %struct.vmu_block* %72, %struct.vmu_block** %4, align 8
  br label %74

73:                                               ; preds = %60, %54, %35
  store %struct.vmu_block* null, %struct.vmu_block** %4, align 8
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.vmu_block*, %struct.vmu_block** %4, align 8
  ret %struct.vmu_block* %75
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local %struct.vmu_block* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
