; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.mtd_blktrans_dev = type { i64 }

@mtdblks = common dso_local global %struct.mtdblk_dev** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*)* @mtdblock_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdblock_flush(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca %struct.mtd_blktrans_dev*, align 8
  %3 = alloca %struct.mtdblk_dev*, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %2, align 8
  %4 = load %struct.mtdblk_dev**, %struct.mtdblk_dev*** @mtdblks, align 8
  %5 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.mtdblk_dev*, %struct.mtdblk_dev** %4, i64 %7
  %9 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %8, align 8
  store %struct.mtdblk_dev* %9, %struct.mtdblk_dev** %3, align 8
  %10 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %14 = call i32 @write_cached_data(%struct.mtdblk_dev* %13)
  %15 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_2__*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %28, align 8
  %30 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_cached_data(%struct.mtdblk_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
