; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___get_metadata_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___get_metadata_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32 }
%struct.thin_disk_superblock = type { i32 }
%struct.dm_block = type { i32 }

@THIN_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@sb_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, i32*)* @__get_metadata_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_metadata_snap(%struct.dm_pool_metadata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thin_disk_superblock*, align 8
  %8 = alloca %struct.dm_block*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %13 = call i32 @dm_bm_read_lock(i32 %11, i32 %12, i32* @sb_validator, %struct.dm_block** %8)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %20 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %19)
  store %struct.thin_disk_superblock* %20, %struct.thin_disk_superblock** %7, align 8
  %21 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %22 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le64_to_cpu(i32 %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %27 = call i32 @dm_bm_unlock(%struct.dm_block* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dm_bm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
