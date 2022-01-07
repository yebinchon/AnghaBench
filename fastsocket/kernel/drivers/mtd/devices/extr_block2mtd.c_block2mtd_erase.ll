; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_block2mtd.c_block2mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.block2mtd_dev* }
%struct.block2mtd_dev = type { i32 }
%struct.erase_info = type { i64, i64, i8* }

@MTD_ERASING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"erase failed err = %d\00", align 1
@MTD_ERASE_FAILED = common dso_local global i8* null, align 8
@MTD_ERASE_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @block2mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block2mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca %struct.block2mtd_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %10, align 8
  store %struct.block2mtd_dev* %11, %struct.block2mtd_dev** %5, align 8
  %12 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %13 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %16 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** @MTD_ERASING, align 8
  %19 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %20 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %5, align 8
  %22 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @_block2mtd_erase(%struct.block2mtd_dev* %24, i64 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %5, align 8
  %29 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** @MTD_ERASE_FAILED, align 8
  %37 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %38 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %43

39:                                               ; preds = %2
  %40 = load i8*, i8** @MTD_ERASE_DONE, align 8
  %41 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %42 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i8*, i8** @MTD_ERASE_DONE, align 8
  %45 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %46 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %48 = call i32 @mtd_erase_callback(%struct.erase_info* %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_block2mtd_erase(%struct.block2mtd_dev*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ERROR(i8*, i32) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
