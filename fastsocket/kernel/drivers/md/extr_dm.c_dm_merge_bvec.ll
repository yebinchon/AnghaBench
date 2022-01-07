; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_merge_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_merge_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.bvec_merge_data = type { i32, i32 }
%struct.bio_vec = type { i32 }
%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)* }

@BIO_MAX_SECTORS = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* @dm_merge_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_merge_bvec(%struct.request_queue* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bvec_merge_data*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %5, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %6, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.mapped_device*, %struct.mapped_device** %13, align 8
  store %struct.mapped_device* %14, %struct.mapped_device** %7, align 8
  %15 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %16 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %15)
  store %struct.dm_table* %16, %struct.dm_table** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %18 = icmp ne %struct.dm_table* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %86

24:                                               ; preds = %3
  %25 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %26 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %27 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.dm_target* @dm_table_find_target(%struct.dm_table* %25, i32 %28)
  store %struct.dm_target* %29, %struct.dm_target** %9, align 8
  %30 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %31 = call i32 @dm_target_is_valid(%struct.dm_target* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %83

34:                                               ; preds = %24
  %35 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %36 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %39 = call i32 @max_io_len(i32 %37, %struct.dm_target* %38)
  %40 = load i64, i64* @BIO_MAX_SECTORS, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @min(i32 %39, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SECTOR_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %47 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %58 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)*, i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)*, i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)** %67, align 8
  %69 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %70 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %71 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 %68(%struct.dm_target* %69, %struct.bvec_merge_data* %70, %struct.bio_vec* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %82

74:                                               ; preds = %56, %53
  %75 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %76 = call i64 @queue_max_hw_sectors(%struct.request_queue* %75)
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = ashr i64 %77, 9
  %79 = icmp sle i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %33
  %84 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %85 = call i32 @dm_table_put(%struct.dm_table* %84)
  br label %86

86:                                               ; preds = %83, %23
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %89 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %5, align 8
  %94 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SECTOR_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %101 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %92, %86
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_target* @dm_table_find_target(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_target_is_valid(%struct.dm_target*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max_io_len(i32, %struct.dm_target*) #1

declare dso_local i64 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
