; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_copy_sm_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_copy_sm_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }
%struct.thin_disk_superblock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_pool_metadata*, %struct.thin_disk_superblock*)* @copy_sm_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_sm_roots(%struct.dm_pool_metadata* %0, %struct.thin_disk_superblock* %1) #0 {
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca %struct.thin_disk_superblock*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  store %struct.thin_disk_superblock* %1, %struct.thin_disk_superblock** %4, align 8
  %5 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %4, align 8
  %6 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %5, i32 0, i32 1
  %7 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %7, i32 0, i32 1
  %9 = call i32 @memcpy(i32* %6, i32* %8, i32 4)
  %10 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %4, align 8
  %11 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %10, i32 0, i32 0
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %12, i32 0, i32 0
  %14 = call i32 @memcpy(i32* %11, i32* %13, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
