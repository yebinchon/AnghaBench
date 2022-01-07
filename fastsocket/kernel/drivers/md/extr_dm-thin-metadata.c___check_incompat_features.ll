; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___check_incompat_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___check_incompat_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_disk_superblock = type { i32, i32 }
%struct.dm_pool_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@THIN_FEATURE_INCOMPAT_SUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"could not access metadata due to unsupported optional features (%lx).\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIN_FEATURE_COMPAT_RO_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"could not access metadata RDWR due to unsupported optional features (%lx).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thin_disk_superblock*, %struct.dm_pool_metadata*)* @__check_incompat_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_incompat_features(%struct.thin_disk_superblock* %0, %struct.dm_pool_metadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thin_disk_superblock*, align 8
  %5 = alloca %struct.dm_pool_metadata*, align 8
  %6 = alloca i32, align 4
  store %struct.thin_disk_superblock* %0, %struct.thin_disk_superblock** %4, align 8
  store %struct.dm_pool_metadata* %1, %struct.dm_pool_metadata** %5, align 8
  %7 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %4, align 8
  %8 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32_to_cpu(i32 %9)
  %11 = load i32, i32* @THIN_FEATURE_INCOMPAT_SUPP, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %24 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @get_disk_ro(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.thin_disk_superblock*, %struct.thin_disk_superblock** %4, align 8
  %33 = getelementptr inbounds %struct.thin_disk_superblock, %struct.thin_disk_superblock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* @THIN_FEATURE_COMPAT_RO_SUPP, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 @DMERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41, %30, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*, i64) #1

declare dso_local i64 @get_disk_ro(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
