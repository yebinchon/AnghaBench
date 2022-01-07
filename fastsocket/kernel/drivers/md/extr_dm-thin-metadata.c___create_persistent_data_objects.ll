; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_persistent_data_objects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_persistent_data_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

@THIN_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@THIN_METADATA_CACHE_SIZE = common dso_local global i32 0, align 4
@THIN_MAX_CONCURRENT_LOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create block manager\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, i32)* @__create_persistent_data_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_persistent_data_objects(%struct.dm_pool_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %8 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @THIN_METADATA_BLOCK_SIZE, align 4
  %11 = load i32, i32* @SECTOR_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @THIN_METADATA_CACHE_SIZE, align 4
  %14 = load i32, i32* @THIN_MAX_CONCURRENT_LOCKS, align 4
  %15 = call i32 @dm_block_manager_create(i32 %9, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %17 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %19 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = call i32 @DMERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @__open_or_format_metadata(%struct.dm_pool_metadata* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %37 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dm_block_manager_destroy(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dm_block_manager_create(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @__open_or_format_metadata(%struct.dm_pool_metadata*, i32) #1

declare dso_local i32 @dm_block_manager_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
