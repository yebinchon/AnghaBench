; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___release_metadata_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___release_metadata_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }
%struct.thin_disk_superblock = type { i32, i32, i32 }
%struct.dm_block = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"No pool metadata snapshot found: nothing to release.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sb_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__release_metadata_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__release_metadata_snap(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thin_disk_superblock*, align 8
  %6 = alloca %struct.dm_block*, align 8
  %7 = alloca %struct.dm_block*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %10 = call i32 @superblock_lock(%struct.dm_pool_metadata* %9, %struct.dm_block** %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %17 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %16)
  store %struct.thin_disk_superblock* %17, %struct.thin_disk_superblock** %5, align 8
  %18 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %5, align 8
  %19 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = call i32 @cpu_to_le64(i32 0)
  %23 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %5, align 8
  %24 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %26 = call i32 @dm_bm_unlock(%struct.dm_block* %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = call i32 @DMWARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %15
  %34 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dm_tm_read_lock(i32 %36, i32 %37, i32* @sb_validator, %struct.dm_block** %7)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %72

43:                                               ; preds = %33
  %44 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %45 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %44)
  store %struct.thin_disk_superblock* %45, %struct.thin_disk_superblock** %5, align 8
  %46 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %5, align 8
  %50 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le64_to_cpu(i32 %51)
  %53 = call i32 @dm_sm_dec_block(i32 %48, i32 %52)
  %54 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %5, align 8
  %58 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le64_to_cpu(i32 %59)
  %61 = call i32 @dm_sm_dec_block(i32 %56, i32 %60)
  %62 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %63 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dm_sm_dec_block(i32 %64, i32 %65)
  %67 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %68 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %71 = call i32 @dm_tm_unlock(i32 %69, %struct.dm_block* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %43, %41, %29, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @superblock_lock(%struct.dm_pool_metadata*, %struct.dm_block**) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @dm_sm_dec_block(i32, i32) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
