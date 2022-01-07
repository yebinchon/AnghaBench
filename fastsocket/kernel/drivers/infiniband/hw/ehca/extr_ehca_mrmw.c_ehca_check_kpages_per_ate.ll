; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_check_kpages_per_ate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_check_kpages_per_ate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ehca_debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"chunk_page=%llx value=%016llx\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"uncontiguous page found pgaddr=%llx prev_pgaddr=%llx page_list_i=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i64*)* @ehca_check_kpages_per_ate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_check_kpages_per_ate(%struct.scatterlist* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %54, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i64 %20
  %22 = call i32 @sg_page(%struct.scatterlist* %21)
  %23 = call i64 @page_to_pfn(i32 %22)
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = shl i64 %23, %24
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* @ehca_debug_level, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @phys_to_abs(i64 %30)
  %32 = call i64 @abs_to_virt(i32 %31)
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ehca_gen_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %34)
  br label %36

36:                                               ; preds = %28, %17
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %36
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @ehca_gen_dbg(i8*, i64, i64) #1

declare dso_local i64 @abs_to_virt(i32) #1

declare dso_local i32 @phys_to_abs(i64) #1

declare dso_local i32 @ehca_gen_err(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
