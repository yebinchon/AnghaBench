; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.mtd_blktrans_dev = type { i32 }

@mtdblks = common dso_local global %struct.mtdblk_dev** null, align 8
@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mtdblock_release\0A\00", align 1
@mtdblks_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*)* @mtdblock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdblock_release(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca %struct.mtd_blktrans_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdblk_dev*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %2, align 8
  %5 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, i64 %10
  %12 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %11, align 8
  store %struct.mtdblk_dev* %12, %struct.mtdblk_dev** %4, align 8
  %13 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %14 = call i32 @DEBUG(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mutex_lock(i32* @mtdblks_lock)
  %16 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %20 = call i32 @write_cached_data(%struct.mtdblk_dev* %19)
  %21 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %21, i32 0, i32 3
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %1
  %30 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %30, i64 %32
  store %struct.mtdblk_dev* null, %struct.mtdblk_dev** %33, align 8
  %34 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %35 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_2__*)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %44, align 8
  %46 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %47 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 %45(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %40, %29
  %51 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @vfree(i32 %53)
  %55 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %56 = call i32 @kfree(%struct.mtdblk_dev* %55)
  br label %57

57:                                               ; preds = %50, %1
  %58 = call i32 @mutex_unlock(i32* @mtdblks_lock)
  %59 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %60 = call i32 @DEBUG(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_cached_data(%struct.mtdblk_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.mtdblk_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
