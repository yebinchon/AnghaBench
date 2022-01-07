; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_lseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.mtd_file_info* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @mtd_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtd_lseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_file_info*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.mtd_file_info*, %struct.mtd_file_info** %11, align 8
  store %struct.mtd_file_info* %12, %struct.mtd_file_info** %8, align 8
  %13 = load %struct.mtd_file_info*, %struct.mtd_file_info** %8, align 8
  %14 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %13, i32 0, i32 0
  %15 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  store %struct.mtd_info* %15, %struct.mtd_info** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %30 [
    i32 128, label %17
    i32 130, label %18
    i32 129, label %24
  ]

17:                                               ; preds = %3
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %49

33:                                               ; preds = %24, %18, %17
  %34 = load i64, i64* %6, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i64 %43, i64* %4, align 8
  br label %49

46:                                               ; preds = %36, %33
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %46, %42, %30
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
