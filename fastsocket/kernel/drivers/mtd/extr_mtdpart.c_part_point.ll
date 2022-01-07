; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_part = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, i64, i64*, i8**, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i32*)* @part_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mtd_part*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %15 = call %struct.mtd_part* @PART(%struct.mtd_info* %14)
  store %struct.mtd_part* %15, %struct.mtd_part** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i64 0, i64* %9, align 8
  br label %37

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.mtd_part*, %struct.mtd_part** %13, align 8
  %39 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_2__*, i64, i64, i64*, i8**, i32*)*, i32 (%struct.TYPE_2__*, i64, i64, i64*, i8**, i32*)** %41, align 8
  %43 = load %struct.mtd_part*, %struct.mtd_part** %13, align 8
  %44 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.mtd_part*, %struct.mtd_part** %13, align 8
  %48 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 %42(%struct.TYPE_2__* %45, i64 %50, i64 %51, i64* %52, i8** %53, i32* %54)
  ret i32 %55
}

declare dso_local %struct.mtd_part* @PART(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
