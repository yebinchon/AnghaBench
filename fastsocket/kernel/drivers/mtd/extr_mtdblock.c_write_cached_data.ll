; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_write_cached_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_write_cached_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i64, i32, i32, i32, %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@STATE_DIRTY = common dso_local global i64 0, align 8
@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"mtdblock: writing cached data for \22%s\22 at 0x%lx, size 0x%x\0A\00", align 1
@STATE_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdblk_dev*)* @write_cached_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cached_data(%struct.mtdblk_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtdblk_dev*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mtdblk_dev* %0, %struct.mtdblk_dev** %3, align 8
  %6 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %6, i32 0, i32 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATE_DIRTY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DEBUG(i32 %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25)
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @erase_write(%struct.mtd_info* %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %15
  %43 = load i64, i64* @STATE_EMPTY, align 8
  %44 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @erase_write(%struct.mtd_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
