; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_dir_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_dir_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.ehca_shca = type { i32 }
%struct.ehca_mr = type { i32 }
%struct.ehca_mr_pginfo = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@EHCA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehca_bmap = common dso_local global %struct.TYPE_4__* null, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*)* @ehca_reg_mr_dir_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehca_reg_mr_dir_sections(i32 %0, i64* %1, %struct.ehca_shca* %2, %struct.ehca_mr* %3, %struct.ehca_mr_pginfo* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ehca_shca*, align 8
  %10 = alloca %struct.ehca_mr*, align 8
  %11 = alloca %struct.ehca_mr_pginfo*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store %struct.ehca_shca* %2, %struct.ehca_shca** %9, align 8
  store %struct.ehca_mr* %3, %struct.ehca_mr** %10, align 8
  store %struct.ehca_mr_pginfo* %4, %struct.ehca_mr_pginfo** %11, align 8
  %14 = load i64, i64* @H_SUCCESS, align 8
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %54, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @EHCA_MAP_ENTRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehca_bmap, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ehca_bmap_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %54

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i64*, i64** %8, align 8
  %40 = load %struct.ehca_shca*, %struct.ehca_shca** %9, align 8
  %41 = load %struct.ehca_mr*, %struct.ehca_mr** %10, align 8
  %42 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %11, align 8
  %43 = call i64 @ehca_reg_mr_sections(i32 %37, i32 %38, i64* %39, %struct.ehca_shca* %40, %struct.ehca_mr* %41, %struct.ehca_mr_pginfo* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @H_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %6, align 8
  br label %59

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i32 @ehca_bmap_valid(i32) #1

declare dso_local i64 @ehca_reg_mr_sections(i32, i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
