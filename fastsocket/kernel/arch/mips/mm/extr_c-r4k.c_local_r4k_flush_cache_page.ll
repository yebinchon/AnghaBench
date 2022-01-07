; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-r4k.c_local_r4k_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.flush_cache_page_args = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_PAGE_VALID = common dso_local global i32 0, align 4
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@cpu_icache_snoops_remote_store = common dso_local global i32 0, align 4
@cpu_has_vtag_icache = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_r4k_flush_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_r4k_flush_cache_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flush_cache_page_args*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.flush_cache_page_args*
  store %struct.flush_cache_page_args* %17, %struct.flush_cache_page_args** %3, align 8
  %18 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %19 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %18, i32 0, i32 2
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %4, align 8
  %21 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %22 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.flush_cache_page_args*, %struct.flush_cache_page_args** %3, align 8
  %25 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.page* @pfn_to_page(i32 %26)
  store %struct.page* %27, %struct.page** %6, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VM_EXEC, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load %struct.mm_struct*, %struct.mm_struct** %34, align 8
  store %struct.mm_struct* %35, %struct.mm_struct** %8, align 8
  store i32 0, i32* %9, align 4
  %36 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %37 = call i32 @has_valid_asid(%struct.mm_struct* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %167

40:                                               ; preds = %1
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = load i64, i64* %5, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32* @pgd_offset(%struct.mm_struct* %44, i64 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32* @pud_offset(i32* %47, i64 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32* @pmd_offset(i32* %50, i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32* @pte_offset(i32* %53, i64 %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pte_present(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %40
  br label %167

61:                                               ; preds = %40
  %62 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.mm_struct*, %struct.mm_struct** %64, align 8
  %66 = icmp eq %struct.mm_struct* %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pte_val(i32 %69)
  %71 = load i32, i32* @_PAGE_VALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i8* null, i8** %14, align 8
  br label %103

75:                                               ; preds = %67, %61
  %76 = load i64, i64* @cpu_has_dc_aliases, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = call i64 @page_mapped(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.page*, %struct.page** %6, align 8
  %84 = call i32 @Page_dcache_dirty(%struct.page* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %82, %78, %75
  %88 = phi i1 [ false, %78 ], [ false, %75 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.page*, %struct.page** %6, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i8* @kmap_coherent(%struct.page* %93, i64 %94)
  store i8* %95, i8** %14, align 8
  br label %100

96:                                               ; preds = %87
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = load i32, i32* @KM_USER0, align 4
  %99 = call i8* @kmap_atomic(%struct.page* %97, i32 %98)
  store i8* %99, i8** %14, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i8*, i8** %14, align 8
  %102 = ptrtoint i8* %101 to i64
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %100, %74
  %104 = load i64, i64* @cpu_has_dc_aliases, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109, %103
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @r4k_blast_dcache_page(i64 %113)
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @cpu_icache_snoops_remote_store, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @r4k_blast_scache_page(i64 %121)
  br label %123

123:                                              ; preds = %120, %117, %112
  br label %124

124:                                              ; preds = %123, %109, %106
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load i8*, i8** %14, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load i64, i64* @cpu_has_vtag_icache, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load %struct.mm_struct*, %struct.mm_struct** %136, align 8
  %138 = icmp eq %struct.mm_struct* %134, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = call i32 (...) @smp_processor_id()
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %143 = call i64 @cpu_context(i32 %141, %struct.mm_struct* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @drop_mmu_context(%struct.mm_struct* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %139
  br label %153

150:                                              ; preds = %133, %130, %127
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @r4k_blast_icache_page(i64 %151)
  br label %153

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153, %124
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @kunmap_coherent()
  br label %166

162:                                              ; preds = %157
  %163 = load i8*, i8** %14, align 8
  %164 = load i32, i32* @KM_USER0, align 4
  %165 = call i32 @kunmap_atomic(i8* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %160
  br label %167

167:                                              ; preds = %39, %60, %166, %154
  ret void
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @has_valid_asid(%struct.mm_struct*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @pte_offset(i32*, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @r4k_blast_dcache_page(i64) #1

declare dso_local i32 @r4k_blast_scache_page(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*, i32) #1

declare dso_local i32 @r4k_blast_icache_page(i64) #1

declare dso_local i32 @kunmap_coherent(...) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
