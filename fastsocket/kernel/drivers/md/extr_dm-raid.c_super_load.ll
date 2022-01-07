; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_super_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_super_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_raid_superblock = type { i64, i32 }

@DM_RAID_MAGIC = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@FirstUse = common dso_local global i32 0, align 4
@MD_CHANGE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, %struct.md_rdev*)* @super_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_load(%struct.md_rdev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_raid_superblock*, align 8
  %8 = alloca %struct.dm_raid_superblock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %12 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  store i32 16, i32* %14, align 8
  %15 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %16 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %17 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @read_disk_sb(%struct.md_rdev* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %26 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dm_raid_superblock* @page_address(i32 %27)
  store %struct.dm_raid_superblock* %28, %struct.dm_raid_superblock** %7, align 8
  %29 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %30 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @DM_RAID_MAGIC, align 4
  %33 = call i64 @cpu_to_le32(i32 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @In_sync, align 4
  %37 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 3
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41, %24
  %47 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %51 = call i32 @super_sync(%struct.TYPE_2__* %49, %struct.md_rdev* %50)
  %52 = load i32, i32* @FirstUse, align 4
  %53 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 3
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @MD_CHANGE_DEVS, align 4
  %57 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %58 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %56, i32* %60)
  %62 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %63 = icmp ne %struct.md_rdev* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  store i32 %65, i32* %3, align 4
  br label %88

66:                                               ; preds = %41, %35
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = icmp ne %struct.md_rdev* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %88

70:                                               ; preds = %66
  %71 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %72 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le64_to_cpu(i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.dm_raid_superblock* @page_address(i32 %77)
  store %struct.dm_raid_superblock* %78, %struct.dm_raid_superblock** %8, align 8
  %79 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %8, align 8
  %80 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @le64_to_cpu(i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp sgt i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %70, %69, %46, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @read_disk_sb(%struct.md_rdev*, i32) #1

declare dso_local %struct.dm_raid_superblock* @page_address(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @super_sync(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
