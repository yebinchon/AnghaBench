; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_writesect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_writesect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_blktrans_dev = type { i64 }

@mtdblks = common dso_local global %struct.mtdblk_dev** null, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @mtdblock_writesect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdblock_writesect(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtdblk_dev*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %10 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %9, i64 %12
  %14 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %13, align 8
  store %struct.mtdblk_dev* %14, %struct.mtdblk_dev** %8, align 8
  %15 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %16 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %21 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %31 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @vmalloc(i32 %34)
  %36 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %37 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %39 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = shl i64 %48, 9
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @do_cached_write(%struct.mtdblk_dev* %47, i64 %49, i32 512, i8* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @do_cached_write(%struct.mtdblk_dev*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
