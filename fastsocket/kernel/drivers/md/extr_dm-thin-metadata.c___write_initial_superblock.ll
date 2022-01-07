; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___write_initial_superblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___write_initial_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.thin_disk_superblock = type { i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i32, i64 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@THIN_METADATA_MAX_SECTORS = common dso_local global i32 0, align 4
@THIN_SUPERBLOCK_MAGIC = common dso_local global i32 0, align 4
@THIN_VERSION = common dso_local global i32 0, align 4
@THIN_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@SECTOR_TO_BLOCK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__write_initial_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_initial_superblock(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.thin_disk_superblock*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %8 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i_size_read(i32 %12)
  %14 = load i32, i32* @SECTOR_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @THIN_METADATA_MAX_SECTORS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @THIN_METADATA_MAX_SECTORS, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dm_sm_commit(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %112

30:                                               ; preds = %21
  %31 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %32 = call i32 @save_sm_roots(%struct.dm_pool_metadata* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %112

37:                                               ; preds = %30
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dm_tm_pre_commit(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %112

46:                                               ; preds = %37
  %47 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %48 = call i32 @superblock_lock_zero(%struct.dm_pool_metadata* %47, %struct.dm_block** %5)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %112

53:                                               ; preds = %46
  %54 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %55 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %54)
  store %struct.thin_disk_superblock* %55, %struct.thin_disk_superblock** %6, align 8
  %56 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %57 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %56, i32 0, i32 11
  store i64 0, i64* %57, align 8
  %58 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %59 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memset(i32 %60, i32 0, i32 4)
  %62 = load i32, i32* @THIN_SUPERBLOCK_MAGIC, align 4
  %63 = call i8* @cpu_to_le64(i32 %62)
  %64 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %65 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %64, i32 0, i32 9
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @THIN_VERSION, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %69 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %71 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %73 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %75 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %77 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %78 = call i32 @copy_sm_roots(%struct.dm_pool_metadata* %76, %struct.thin_disk_superblock* %77)
  %79 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %80 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_le64(i32 %81)
  %83 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %84 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %86 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_le64(i32 %87)
  %89 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %90 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @THIN_METADATA_BLOCK_SIZE, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %94 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SECTOR_TO_BLOCK_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = call i8* @cpu_to_le64(i32 %97)
  %99 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %100 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %102 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %106 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %108 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %111 = call i32 @dm_tm_commit(i32 %109, %struct.dm_block* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %53, %51, %44, %35, %28
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @dm_sm_commit(i32) #1

declare dso_local i32 @save_sm_roots(%struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @superblock_lock_zero(%struct.dm_pool_metadata*, %struct.dm_block**) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @copy_sm_roots(%struct.dm_pool_metadata*, %struct.thin_disk_superblock*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
