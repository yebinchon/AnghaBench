; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_process_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_process_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32, i32, i64, i64*, %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@max_pfn_mapped = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@CPA_ARRAY = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@__START_KERNEL_map = common dso_local global i64 0, align 8
@_brk_end = common dso_local global i64 0, align 8
@_text = common dso_local global i64 0, align 8
@max_low_pfn_mapped = common dso_local global i32 0, align 4
@phys_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpa_data*)* @cpa_process_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpa_process_alias(%struct.cpa_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpa_data*, align 8
  %4 = alloca %struct.cpa_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.cpa_data* %0, %struct.cpa_data** %3, align 8
  %9 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %10 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i64 @__va(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %16 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @max_pfn_mapped, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %23 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %30 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %29, i32 0, i32 4
  %31 = load %struct.page**, %struct.page*** %30, align 8
  %32 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %33 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %34
  %36 = load %struct.page*, %struct.page** %35, align 8
  store %struct.page* %36, %struct.page** %8, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = call i32 @PageHighMem(%struct.page* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %97

42:                                               ; preds = %28
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i64 @page_address(%struct.page* %43)
  store i64 %44, i64* %6, align 8
  br label %67

45:                                               ; preds = %21
  %46 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %47 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CPA_ARRAY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %54 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %57 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %66

61:                                               ; preds = %45
  %62 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %63 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %61, %52
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @PAGE_OFFSET, align 8
  %70 = load i64, i64* @PAGE_OFFSET, align 8
  %71 = load i32, i32* @max_pfn_mapped, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add i64 %70, %74
  %76 = call i64 @within(i64 %68, i64 %69, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %67
  %79 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %80 = bitcast %struct.cpa_data* %4 to i8*
  %81 = bitcast %struct.cpa_data* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 32, i1 false)
  %82 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %4, i32 0, i32 3
  store i64* %5, i64** %82, align 8
  %83 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %84 = load i32, i32* @CPA_ARRAY, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %4, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %4, i32 0)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %67
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93, %41, %20
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @__va(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @within(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
