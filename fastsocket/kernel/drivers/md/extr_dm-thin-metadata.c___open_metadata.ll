; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___open_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___open_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.thin_disk_superblock = type { i32, i32 }

@THIN_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@sb_validator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"couldn't read superblock\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tm_open_with_sm failed\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sm_disk_open failed\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"could not create non-blocking clone tm\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__open_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_metadata(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.thin_disk_superblock*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %7 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %11 = call i32 @dm_bm_read_lock(i32 %9, i32 %10, i32* @sb_validator, %struct.dm_block** %5)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %102

17:                                               ; preds = %1
  %18 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %19 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %18)
  store %struct.thin_disk_superblock* %19, %struct.thin_disk_superblock** %6, align 8
  %20 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %21 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %22 = call i32 @__check_incompat_features(%struct.thin_disk_superblock* %20, %struct.dm_pool_metadata* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %98

26:                                               ; preds = %17
  %27 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %28 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %31 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %32 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %34, i32 0, i32 1
  %36 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %37 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %36, i32 0, i32 0
  %38 = call i32 @dm_tm_open_with_sm(i32 %29, i32 %30, i32 %33, i32 4, i32* %35, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %98

43:                                               ; preds = %26
  %44 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %45 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %48 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dm_sm_disk_open(i32 %46, i32 %49, i32 4)
  %51 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %52 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %54 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = call i32 @DMERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %61 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %89

64:                                               ; preds = %43
  %65 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %66 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dm_tm_create_non_blocking_clone(i32 %67)
  %69 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %70 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %72 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = call i32 @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %64
  %80 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %81 = call i32 @__setup_btree_details(%struct.dm_pool_metadata* %80)
  %82 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %83 = call i32 @dm_bm_unlock(%struct.dm_block* %82)
  store i32 %83, i32* %2, align 4
  br label %102

84:                                               ; preds = %75
  %85 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %86 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dm_sm_destroy(i32 %87)
  br label %89

89:                                               ; preds = %84, %58
  %90 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %91 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dm_tm_destroy(i32 %92)
  %94 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %95 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dm_sm_destroy(i32 %96)
  br label %98

98:                                               ; preds = %89, %41, %25
  %99 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %100 = call i32 @dm_bm_unlock(%struct.dm_block* %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %79, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @dm_bm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @__check_incompat_features(%struct.thin_disk_superblock*, %struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_tm_open_with_sm(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dm_sm_disk_open(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dm_tm_create_non_blocking_clone(i32) #1

declare dso_local i32 @__setup_btree_details(%struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
