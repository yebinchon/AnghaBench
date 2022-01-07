; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_change_page_attr_set_clr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_change_page_attr_set_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.cpa_data = type { i64*, i32, i32, i32, i64, i8*, i8*, %struct.page** }

@CPA_ARRAY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@_PAGE_NX = common dso_local global i32 0, align 4
@CPA_FLUSHTLB = common dso_local global i32 0, align 4
@cpu_has_clflush = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i8*, i8*, i32, i32, %struct.page**)* @change_page_attr_set_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_page_attr_set_clr(i64* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, %struct.page** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca %struct.cpa_data, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.page** %6, %struct.page*** %15, align 8
  store i64 0, i64* %20, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i8* @canon_pgprot(i8* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @canon_pgprot(i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @pgprot_val(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %7
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @pgprot_val(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %174

37:                                               ; preds = %33, %29, %7
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @CPA_ARRAY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i64, i64* @PAGE_MASK, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, %58
  store i64 %64, i64* %62, align 8
  %65 = call i32 @WARN_ON_ONCE(i32 1)
  br label %66

66:                                               ; preds = %57, %47
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  br label %43

70:                                               ; preds = %43
  br label %93

71:                                               ; preds = %37
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %71
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PAGE_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i64, i64* @PAGE_MASK, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = call i32 @WARN_ON_ONCE(i32 1)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %20, align 8
  br label %92

92:                                               ; preds = %89, %71
  br label %93

93:                                               ; preds = %92, %70
  %94 = call i32 (...) @kmap_flush_unused()
  %95 = call i32 (...) @vm_unmap_aliases()
  %96 = load i64*, i64** %9, align 8
  %97 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 0
  store i64* %96, i64** %97, align 8
  %98 = load %struct.page**, %struct.page*** %15, align 8
  %99 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 7
  store %struct.page** %98, %struct.page*** %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 6
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 5
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @CPA_ARRAY, align 4
  %112 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %93
  %117 = load i32, i32* %14, align 4
  %118 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %93
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @pgprot_val(i8* %122)
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @pgprot_val(i8* %124)
  %126 = or i32 %123, %125
  %127 = load i32, i32* @_PAGE_NX, align 4
  %128 = icmp ne i32 %126, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %16, i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CPA_FLUSHTLB, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %121
  br label %172

138:                                              ; preds = %121
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @cache_attr(i8* %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* @cpu_has_clflush, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %150 = load i32, i32* @CPA_ARRAY, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load i64*, i64** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %18, align 4
  %158 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.page**, %struct.page*** %15, align 8
  %161 = call i32 @cpa_flush_array(i64* %155, i32 %156, i32 %157, i32 %159, %struct.page** %160)
  br label %167

162:                                              ; preds = %146
  %163 = load i64, i64* %20, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @cpa_flush_range(i64 %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %154
  br label %171

168:                                              ; preds = %143, %138
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @cpa_flush_all(i32 %169)
  br label %171

171:                                              ; preds = %168, %167
  br label %172

172:                                              ; preds = %171, %137
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %172, %36
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i8* @canon_pgprot(i8*) #1

declare dso_local i32 @pgprot_val(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kmap_flush_unused(...) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

declare dso_local i32 @cache_attr(i8*) #1

declare dso_local i32 @cpa_flush_array(i64*, i32, i32, i32, %struct.page**) #1

declare dso_local i32 @cpa_flush_range(i64, i32, i32) #1

declare dso_local i32 @cpa_flush_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
