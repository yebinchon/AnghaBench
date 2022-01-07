; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i32*)* @ram_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ram_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %14, %15
  %17 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %39

24:                                               ; preds = %6
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = load i8**, i8*** %12, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** %11, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %27, %21
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
