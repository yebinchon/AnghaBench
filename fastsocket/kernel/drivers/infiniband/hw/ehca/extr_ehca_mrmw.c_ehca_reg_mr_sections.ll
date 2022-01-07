; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }
%struct.ehca_shca = type { i32 }
%struct.ehca_mr = type { i32 }
%struct.ehca_mr_pginfo = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@EHCA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehca_bmap = common dso_local global %struct.TYPE_6__* null, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*)* @ehca_reg_mr_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehca_reg_mr_sections(i32 %0, i32 %1, i64* %2, %struct.ehca_shca* %3, %struct.ehca_mr* %4, %struct.ehca_mr_pginfo* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ehca_shca*, align 8
  %12 = alloca %struct.ehca_mr*, align 8
  %13 = alloca %struct.ehca_mr_pginfo*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store %struct.ehca_shca* %3, %struct.ehca_shca** %11, align 8
  store %struct.ehca_mr* %4, %struct.ehca_mr** %12, align 8
  store %struct.ehca_mr_pginfo* %5, %struct.ehca_mr_pginfo** %13, align 8
  %16 = load i64, i64* @H_SUCCESS, align 8
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %63, %6
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @EHCA_MAP_ENTRIES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehca_bmap, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ehca_bmap_valid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %21
  br label %63

44:                                               ; preds = %21
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i64*, i64** %10, align 8
  %49 = load %struct.ehca_shca*, %struct.ehca_shca** %11, align 8
  %50 = load %struct.ehca_mr*, %struct.ehca_mr** %12, align 8
  %51 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %13, align 8
  %52 = call i64 @ehca_reg_mr_section(i32 %45, i32 %46, i32 %47, i64* %48, %struct.ehca_shca* %49, %struct.ehca_mr* %50, %struct.ehca_mr_pginfo* %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @H_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %7, align 8
  br label %68

62:                                               ; preds = %56, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load i64, i64* %14, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i32 @ehca_bmap_valid(i32) #1

declare dso_local i64 @ehca_reg_mr_section(i32, i32, i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
