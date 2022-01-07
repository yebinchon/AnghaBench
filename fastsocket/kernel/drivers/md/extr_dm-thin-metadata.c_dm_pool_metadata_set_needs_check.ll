; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_metadata_set_needs_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_metadata_set_needs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }
%struct.dm_block = type { i32 }
%struct.thin_disk_superblock = type { i32 }

@THIN_METADATA_NEEDS_CHECK_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"couldn't read superblock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_metadata_set_needs_check(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca %struct.dm_pool_metadata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_block*, align 8
  %5 = alloca %struct.thin_disk_superblock*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %2, align 8
  %6 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load i32, i32* @THIN_METADATA_NEEDS_CHECK_FLAG, align 4
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %11 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %15 = call i32 @superblock_lock(%struct.dm_pool_metadata* %14, %struct.dm_block** %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.dm_block*, %struct.dm_block** %4, align 8
  %22 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %21)
  store %struct.thin_disk_superblock* %22, %struct.thin_disk_superblock** %5, align 8
  %23 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %24 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %5, align 8
  %28 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dm_block*, %struct.dm_block** %4, align 8
  %30 = call i32 @dm_bm_unlock(%struct.dm_block* %29)
  br label %31

31:                                               ; preds = %20, %18
  %32 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %33 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %32, i32 0, i32 0
  %34 = call i32 @up_write(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @superblock_lock(%struct.dm_pool_metadata*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
