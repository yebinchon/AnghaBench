; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.mtd_file_info* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 (%struct.mtd_info*)* }

@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MTD_close\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mtd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.mtd_file_info*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.mtd_file_info*, %struct.mtd_file_info** %8, align 8
  store %struct.mtd_file_info* %9, %struct.mtd_file_info** %5, align 8
  %10 = load %struct.mtd_file_info*, %struct.mtd_file_info** %5, align 8
  %11 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %10, i32 0, i32 0
  %12 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  store %struct.mtd_info* %12, %struct.mtd_info** %6, align 8
  %13 = load i32, i32* @MTD_DEBUG_LEVEL0, align 4
  %14 = call i32 @DEBUG(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FMODE_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %23, align 8
  %25 = icmp ne i32 (%struct.mtd_info*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %31 = call i32 %29(%struct.mtd_info* %30)
  br label %32

32:                                               ; preds = %26, %21, %2
  %33 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %34 = call i32 @put_mtd_device(%struct.mtd_info* %33)
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 1
  store %struct.mtd_file_info* null, %struct.mtd_file_info** %36, align 8
  %37 = load %struct.mtd_file_info*, %struct.mtd_file_info** %5, align 8
  %38 = call i32 @kfree(%struct.mtd_file_info* %37)
  ret i32 0
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @put_mtd_device(%struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.mtd_file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
