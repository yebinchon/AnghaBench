; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_register_rpage_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipz_adapter_handle = type { i32 }

@ehca_debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kpage[%d]=%p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kpage=%p\00", align 1
@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [152 x i8] c"logical_address_of_page not on a 4k boundary adapter_handle=%llx mr=%p mr_handle=%llx pagesize=%x queue_type=%x logical_address_of_page=%llx count=%llx\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_register_rpage_mr(i32 %0, %struct.ehca_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ipz_adapter_handle, align 4
  %8 = alloca %struct.ehca_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  store i32 %0, i32* %16, align 4
  store %struct.ehca_mr* %1, %struct.ehca_mr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @ehca_debug_level, align 4
  %18 = icmp sge i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @abs_to_virt(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %45, %25
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 (i8*, i8*, ...) @ehca_gen_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %29

48:                                               ; preds = %29
  br label %54

49:                                               ; preds = %22
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, i8*, ...) @ehca_gen_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %49, %48
  br label %55

55:                                               ; preds = %54, %6
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @EHCA_PAGESIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ehca_mr*, %struct.ehca_mr** %8, align 8
  %68 = load %struct.ehca_mr*, %struct.ehca_mr** %8, align 8
  %69 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 %66, %struct.ehca_mr* %67, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @H_PARAMETER, align 4
  store i32 %77, i32* %13, align 4
  br label %90

78:                                               ; preds = %58, %55
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.ehca_mr*, %struct.ehca_mr** %8, align 8
  %82 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hipz_h_register_rpage(i32 %88, i32 %79, i32 %80, i32 %84, i32 %85, i32 %86)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %78, %64
  %91 = load i32, i32* %13, align 4
  ret i32 %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @abs_to_virt(i32) #1

declare dso_local i32 @ehca_gen_dbg(i8*, i8*, ...) #1

declare dso_local i32 @ehca_gen_err(i8*, i32, %struct.ehca_mr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hipz_h_register_rpage(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
