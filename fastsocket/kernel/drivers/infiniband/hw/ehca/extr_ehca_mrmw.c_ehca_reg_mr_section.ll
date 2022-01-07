; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, i32 }
%struct.ehca_mr = type { i32 }
%struct.ehca_mr_pginfo = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"reg_mr_section will probably fail:hwpage_size does not fit to section start address\00", align 1
@EHCA_SECTSIZE = common dso_local global i32 0, align 4
@MAX_RPAGES = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"register_rpage_mr failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*)* @ehca_reg_mr_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehca_reg_mr_section(i32 %0, i32 %1, i32 %2, i64* %3, %struct.ehca_shca* %4, %struct.ehca_mr* %5, %struct.ehca_mr_pginfo* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ehca_shca*, align 8
  %14 = alloca %struct.ehca_mr*, align 8
  %15 = alloca %struct.ehca_mr_pginfo*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store %struct.ehca_shca* %4, %struct.ehca_shca** %13, align 8
  store %struct.ehca_mr* %5, %struct.ehca_mr** %14, align 8
  store %struct.ehca_mr_pginfo* %6, %struct.ehca_mr_pginfo** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = bitcast i64* %23 to i8*
  %25 = call i64 @virt_to_abs(i8* %24)
  store i64 %25, i64* %18, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @ehca_calc_sectbase(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %20, align 8
  %30 = load i8*, i8** %20, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %15, align 8
  %33 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %31, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load %struct.ehca_shca*, %struct.ehca_shca** %13, align 8
  %41 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %40, i32 0, i32 0
  %42 = call i32 @ehca_err(i32* %41, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %7
  %44 = load i32, i32* @EHCA_SECTSIZE, align 4
  %45 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %15, align 8
  %46 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %109, %43
  %50 = load i64, i64* %17, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %49
  store i64 0, i64* %21, align 8
  br label %55

55:                                               ; preds = %81, %54
  %56 = load i64, i64* %21, align 8
  %57 = load i64, i64* @MAX_RPAGES, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i64, i64* %17, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %60, %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %84

66:                                               ; preds = %64
  %67 = load i8*, i8** %20, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %17, align 8
  %70 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %15, align 8
  %71 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %68, %73
  %75 = getelementptr i8, i8* %67, i64 %74
  store i8* %75, i8** %22, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = call i64 @virt_to_abs(i8* %76)
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %21, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load i64, i64* %21, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %21, align 8
  br label %55

84:                                               ; preds = %64
  %85 = load %struct.ehca_shca*, %struct.ehca_shca** %13, align 8
  %86 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ehca_mr*, %struct.ehca_mr** %14, align 8
  %89 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %15, align 8
  %90 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @ehca_encode_hwpage_size(i64 %92)
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %21, align 8
  %96 = call i64 @hipz_h_register_rpage_mr(i32 %87, %struct.ehca_mr* %88, i32 %93, i32 0, i64 %94, i64 %95)
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* @H_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %84
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.ehca_shca*, %struct.ehca_shca** %13, align 8
  %106 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %105, i32 0, i32 0
  %107 = call i32 @ehca_err(i32* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i64, i64* %16, align 8
  store i64 %108, i64* %8, align 8
  br label %112

109:                                              ; preds = %100, %84
  br label %49

110:                                              ; preds = %49
  %111 = load i64, i64* %16, align 8
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %110, %104
  %113 = load i64, i64* %8, align 8
  ret i64 %113
}

declare dso_local i64 @virt_to_abs(i8*) #1

declare dso_local i8* @ehca_calc_sectbase(i32, i32, i32) #1

declare dso_local i32 @ehca_err(i32*, i8*) #1

declare dso_local i64 @hipz_h_register_rpage_mr(i32, %struct.ehca_mr*, i32, i32, i64, i64) #1

declare dso_local i32 @ehca_encode_hwpage_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
