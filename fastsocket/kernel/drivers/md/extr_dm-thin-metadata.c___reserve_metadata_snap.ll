; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___reserve_metadata_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___reserve_metadata_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }
%struct.thin_disk_superblock = type { i32, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }

@THIN_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@sb_validator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Pool metadata snapshot already exists: release this before taking another.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__reserve_metadata_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reserve_metadata_snap(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.thin_disk_superblock*, align 8
  %7 = alloca %struct.dm_block*, align 8
  %8 = alloca %struct.dm_block*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %11 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %14 = call i32 @dm_sm_inc_block(i32 %12, i32 %13)
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %19 = call i32 @dm_tm_shadow_block(i32 %17, i32 %18, i32* @sb_validator, %struct.dm_block** %7, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %101

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %31 = call i32 @dm_block_location(%struct.dm_block* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %33 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %32)
  store %struct.thin_disk_superblock* %33, %struct.thin_disk_superblock** %6, align 8
  %34 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %35 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le64_to_cpu(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %24
  %40 = call i32 @DMWARN(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %42 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dm_tm_dec(i32 %43, i32 %44)
  %46 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %50 = call i32 @dm_tm_unlock(i32 %48, %struct.dm_block* %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %101

53:                                               ; preds = %24
  %54 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %55 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %54, i32 0, i32 4
  %56 = call i32 @memset(i32* %55, i32 0, i32 4)
  %57 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %58 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %57, i32 0, i32 3
  %59 = call i32 @memset(i32* %58, i32 0, i32 4)
  %60 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %61 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %64 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le64_to_cpu(i32 %65)
  %67 = call i32 @dm_tm_inc(i32 %62, i64 %66)
  %68 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %69 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %72 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le64_to_cpu(i32 %73)
  %75 = call i32 @dm_tm_inc(i32 %70, i64 %74)
  %76 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %77 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dm_block*, %struct.dm_block** %7, align 8
  %80 = call i32 @dm_tm_unlock(i32 %78, %struct.dm_block* %79)
  %81 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %82 = call i32 @superblock_lock(%struct.dm_pool_metadata* %81, %struct.dm_block** %8)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %53
  %86 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %87 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dm_tm_dec(i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %101

92:                                               ; preds = %53
  %93 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %94 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %93)
  store %struct.thin_disk_superblock* %94, %struct.thin_disk_superblock** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @cpu_to_le64(i32 %95)
  %97 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %6, align 8
  %98 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %100 = call i32 @dm_bm_unlock(%struct.dm_block* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %92, %85, %39, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dm_sm_inc_block(i32, i32) #1

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dm_tm_inc(i32, i64) #1

declare dso_local i32 @superblock_lock(%struct.dm_pool_metadata*, %struct.dm_block**) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
