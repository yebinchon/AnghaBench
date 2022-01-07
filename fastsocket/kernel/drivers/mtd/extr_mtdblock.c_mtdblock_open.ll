; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, i32*, %struct.mtd_info*, i64, i32, i32 }
%struct.mtd_info = type { i32, i64 }
%struct.mtd_blktrans_dev = type { i32, %struct.mtd_info* }

@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mtdblock_open\0A\00", align 1
@mtdblks_lock = common dso_local global i32 0, align 4
@mtdblks = common dso_local global %struct.mtdblk_dev** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STATE_EMPTY = common dso_local global i32 0, align 4
@MTD_NO_ERASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*)* @mtdblock_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdblock_open(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_blktrans_dev*, align 8
  %4 = alloca %struct.mtdblk_dev*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %3, align 8
  %7 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %7, i32 0, i32 1
  %9 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  store %struct.mtd_info* %9, %struct.mtd_info** %5, align 8
  %10 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %14 = call i32 @DEBUG(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mutex_lock(i32* @mtdblks_lock)
  %16 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %16, i64 %18
  %20 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %19, align 8
  %21 = icmp ne %struct.mtdblk_dev* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %23, i64 %25
  %27 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %26, align 8
  %28 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = call i32 @mutex_unlock(i32* @mtdblks_lock)
  store i32 0, i32* %2, align 4
  br label %87

32:                                               ; preds = %1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.mtdblk_dev* @kzalloc(i32 40, i32 %33)
  store %struct.mtdblk_dev* %34, %struct.mtdblk_dev** %4, align 8
  %35 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %36 = icmp ne %struct.mtdblk_dev* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = call i32 @mutex_unlock(i32* @mtdblks_lock)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %87

41:                                               ; preds = %32
  %42 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %45, i32 0, i32 2
  store %struct.mtd_info* %44, %struct.mtd_info** %46, align 8
  %47 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %47, i32 0, i32 5
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* @STATE_EMPTY, align 4
  %51 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %54 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %53, i32 0, i32 2
  %55 = load %struct.mtd_info*, %struct.mtd_info** %54, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MTD_NO_ERASE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %41
  %62 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %63 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %62, i32 0, i32 2
  %64 = load %struct.mtd_info*, %struct.mtd_info** %63, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %70 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %69, i32 0, i32 2
  %71 = load %struct.mtd_info*, %struct.mtd_info** %70, align 8
  %72 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %75 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %68, %61, %41
  %79 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, align 8
  %80 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %80, i64 %82
  store %struct.mtdblk_dev* %79, %struct.mtdblk_dev** %83, align 8
  %84 = call i32 @mutex_unlock(i32* @mtdblks_lock)
  %85 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %86 = call i32 @DEBUG(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %37, %22
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.mtdblk_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
