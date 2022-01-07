; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_super_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_super_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dm_raid_superblock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FirstUse = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @super_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_validate(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.dm_raid_superblock*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %7 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.dm_raid_superblock* @page_address(i32 %9)
  store %struct.dm_raid_superblock* %10, %struct.dm_raid_superblock** %6, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %18 = call i64 @super_init_validation(%struct.mddev* %16, %struct.md_rdev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %15, %2
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 8, i32* %26, align 4
  %27 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %28 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 8, i32* %31, align 4
  %32 = load i32, i32* @FirstUse, align 4
  %33 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %23
  %38 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %6, align 8
  %39 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le64_to_cpu(i32 %40)
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MaxSector, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32, i32* @In_sync, align 4
  %51 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %37
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* @Faulty, align 4
  %57 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %58 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i32, i32* @Faulty, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @In_sync, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %71 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %61, %55
  %78 = load i32, i32* @FirstUse, align 4
  %79 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 0
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.dm_raid_superblock* @page_address(i32) #1

declare dso_local i64 @super_init_validation(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
