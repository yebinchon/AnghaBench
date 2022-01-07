; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ubi_volume_desc* }
%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"release device %d, volume %d, mode %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"update of volume %d not finished, volume is damaged\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"only %lld of %lld bytes received for atomic LEB change for volume %d:%d, cancel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vol_cdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vol_cdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ubi_volume_desc*, align 8
  %6 = alloca %struct.ubi_volume*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  store %struct.ubi_volume_desc* %9, %struct.ubi_volume_desc** %5, align 8
  %10 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %10, i32 0, i32 1
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  store %struct.ubi_volume* %12, %struct.ubi_volume** %6, align 8
  %13 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, i32, i32, ...) @dbg_gen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %26 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  %30 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %31 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ubi_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %35 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubi_assert(i32 %39)
  %41 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %42 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %44 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vfree(i32 %45)
  br label %75

47:                                               ; preds = %2
  %48 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %49 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %57 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %65 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i32, i32, ...) @dbg_gen(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58, i32 %63, i32 %66)
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %69 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %71 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @vfree(i32 %72)
  br label %74

74:                                               ; preds = %52, %47
  br label %75

75:                                               ; preds = %74, %29
  %76 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %5, align 8
  %77 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %76)
  ret i32 0
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ubi_warn(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @ubi_close_volume(%struct.ubi_volume_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
