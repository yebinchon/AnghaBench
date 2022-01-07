; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_reg_mr_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i32 }
%struct.ehea_mr = type { i32 }

@EHEA_PAGES_PER_SECTION = common dso_local global i64 0, align 8
@EHEA_MAX_RPAGE = common dso_local global i64 0, align 8
@EHEA_PAGESIZE = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@FORCE_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"register_rpage_mr failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64*, %struct.ehea_adapter*, %struct.ehea_mr*)* @ehea_reg_mr_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_reg_mr_section(i32 %0, i32 %1, i32 %2, i64* %3, %struct.ehea_adapter* %4, %struct.ehea_mr* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ehea_adapter*, align 8
  %13 = alloca %struct.ehea_mr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store %struct.ehea_adapter* %4, %struct.ehea_adapter** %12, align 8
  store %struct.ehea_mr* %5, %struct.ehea_mr** %13, align 8
  store i64 0, i64* %18, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = bitcast i64* %21 to i8*
  %23 = call i64 @virt_to_abs(i8* %22)
  store i64 %23, i64* %19, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @ehea_calc_sectbase(i32 %24, i32 %25, i32 %26)
  store i8* %27, i8** %20, align 8
  store i64 0, i64* %15, align 8
  br label %28

28:                                               ; preds = %83, %6
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @EHEA_PAGES_PER_SECTION, align 8
  %31 = load i64, i64* @EHEA_MAX_RPAGE, align 8
  %32 = udiv i64 %30, %31
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %28
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @EHEA_MAX_RPAGE, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i8*, i8** %20, align 8
  %41 = load i64, i64* %18, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* @EHEA_PAGESIZE, align 8
  %44 = mul i64 %41, %43
  %45 = getelementptr i8, i8* %40, i64 %44
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @virt_to_abs(i8* %46)
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %39
  %52 = load i64, i64* %16, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %16, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.ehea_adapter*, %struct.ehea_adapter** %12, align 8
  %56 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ehea_mr*, %struct.ehea_mr** %13, align 8
  %59 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* @EHEA_MAX_RPAGE, align 8
  %63 = call i64 @ehea_h_register_rpage_mr(i32 %57, i32 %60, i32 0, i32 0, i64 %61, i64 %62)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @H_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %54
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.ehea_adapter*, %struct.ehea_adapter** %12, align 8
  %73 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ehea_mr*, %struct.ehea_mr** %13, align 8
  %76 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FORCE_FREE, align 4
  %79 = call i32 @ehea_h_free_resource(i32 %74, i32 %77, i32 %78)
  %80 = call i32 @ehea_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %81 = load i64, i64* %17, align 8
  store i64 %81, i64* %7, align 8
  br label %88

82:                                               ; preds = %67, %54
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %15, align 8
  br label %28

86:                                               ; preds = %28
  %87 = load i64, i64* %17, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %86, %71
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local i64 @virt_to_abs(i8*) #1

declare dso_local i8* @ehea_calc_sectbase(i32, i32, i32) #1

declare dso_local i64 @ehea_h_register_rpage_mr(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
