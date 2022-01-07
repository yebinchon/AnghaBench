; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___commit_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thin_disk_superblock = type { i8*, i8*, i8*, i8*, i8* }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__commit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__commit_transaction(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thin_disk_superblock*, align 8
  %8 = alloca %struct.dm_block*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %9 = call i32 @BUILD_BUG_ON(i32 0)
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %11 = call i32 @__write_changed_details(%struct.dm_pool_metadata* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %18 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dm_sm_commit(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %16
  %26 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dm_tm_pre_commit(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %36 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dm_sm_root_size(i32 %37, i64* %5)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %107

43:                                               ; preds = %34
  %44 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %45 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dm_sm_root_size(i32 %46, i64* %6)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %43
  %53 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %54 = call i32 @save_sm_roots(%struct.dm_pool_metadata* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %52
  %60 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %61 = call i32 @superblock_lock(%struct.dm_pool_metadata* %60, %struct.dm_block** %8)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %59
  %67 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %68 = call %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block* %67)
  store %struct.thin_disk_superblock* %68, %struct.thin_disk_superblock** %7, align 8
  %69 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %70 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %74 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %76 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_le64(i32 %77)
  %79 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %80 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %82 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le64(i32 %83)
  %85 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %86 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %88 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le64(i32 %89)
  %91 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %92 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %94 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %98 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %100 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %7, align 8
  %101 = call i32 @copy_sm_roots(%struct.dm_pool_metadata* %99, %struct.thin_disk_superblock* %100)
  %102 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %103 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dm_block*, %struct.dm_block** %8, align 8
  %106 = call i32 @dm_tm_commit(i32 %104, %struct.dm_block* %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %66, %64, %57, %50, %41, %32, %23, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__write_changed_details(%struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_sm_commit(i32) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @dm_sm_root_size(i32, i64*) #1

declare dso_local i32 @save_sm_roots(%struct.dm_pool_metadata*) #1

declare dso_local i32 @superblock_lock(%struct.dm_pool_metadata*, %struct.dm_block**) #1

declare dso_local %struct.thin_disk_superblock* @dm_block_data(%struct.dm_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @copy_sm_roots(%struct.dm_pool_metadata*, %struct.thin_disk_superblock*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
