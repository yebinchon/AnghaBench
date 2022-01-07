; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdchar.c_mtd_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mtd_file_info* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 (%struct.mtd_info*, i64, i64, i64)*, i64 }

@EINVAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @mtd_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtd_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtd_file_info*, align 8
  %13 = alloca %struct.mtd_info*, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.mtd_file_info*, %struct.mtd_file_info** %16, align 8
  store %struct.mtd_file_info* %17, %struct.mtd_file_info** %12, align 8
  %18 = load %struct.mtd_file_info*, %struct.mtd_file_info** %12, align 8
  %19 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %13, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %22, align 8
  %24 = icmp ne i64 (%struct.mtd_info*, i64, i64, i64)* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %6, align 8
  br label %74

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = icmp uge i64 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %31
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %6, align 8
  br label %74

48:                                               ; preds = %37
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = icmp ugt i64 %52, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %6, align 8
  br label %74

62:                                               ; preds = %48
  %63 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 0
  %65 = load i64 (%struct.mtd_info*, i64, i64, i64)*, i64 (%struct.mtd_info*, i64, i64, i64)** %64, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 %65(%struct.mtd_info* %66, i64 %67, i64 %68, i64 %69)
  store i64 %70, i64* %6, align 8
  br label %74

71:                                               ; preds = %5
  %72 = load i64, i64* @ENOSYS, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %71, %62, %59, %45, %28
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
