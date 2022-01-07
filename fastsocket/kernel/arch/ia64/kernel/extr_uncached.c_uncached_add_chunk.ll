; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_uncached.c_uncached_add_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_uncached.c_uncached_add_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncached_pool = type { i32, i32, i32, i32 }
%struct.page = type { i32 }

@MAX_CONVERTED_CHUNKS_PER_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_THISNODE = common dso_local global i32 0, align 4
@IA64_GRANULE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@IA64_GRANULE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAL_VISIBILITY_PHYSICAL = common dso_local global i32 0, align 4
@PAL_VISIBILITY_OK_REMOTE_NEEDED = common dso_local global i32 0, align 4
@uncached_ipi_visibility = common dso_local global i32 0, align 4
@PAL_VISIBILITY_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sn2\00", align 1
@PAL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@uncached_ipi_mc_drain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uncached_pool*, i32)* @uncached_add_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncached_add_chunk(%struct.uncached_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uncached_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uncached_pool* %0, %struct.uncached_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %13 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %16 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %15, i32 0, i32 1
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %196

20:                                               ; preds = %2
  %21 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %22 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %28 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %196

30:                                               ; preds = %20
  %31 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %32 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX_CONVERTED_CHUNKS_PER_NODE, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %38 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 -1, i32* %3, align 4
  br label %196

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @GFP_THISNODE, align 4
  %46 = or i32 %44, %45
  %47 = load i64, i64* @IA64_GRANULE_SHIFT, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call %struct.page* @alloc_pages_exact_node(i32 %41, i32 %46, i64 %49)
  store %struct.page* %50, %struct.page** %6, align 8
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %55 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 -1, i32* %3, align 4
  br label %196

57:                                               ; preds = %40
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call i64 @page_address(%struct.page* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @PAGE_OFFSET, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %77, %57
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.page*, %struct.page** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page, %struct.page* %72, i64 %74
  %76 = call i32 @SetPageUncached(%struct.page* %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = call i32 @flush_tlb_kernel_range(i64 %81, i64 %85)
  %87 = load i32, i32* @PAL_VISIBILITY_PHYSICAL, align 4
  %88 = call i32 @ia64_pal_prefetch_visibility(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PAL_VISIBILITY_OK_REMOTE_NEEDED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %94 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %93, i32 0, i32 3
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load i32, i32* @uncached_ipi_visibility, align 4
  %97 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %98 = call i32 @smp_call_function(i32 %96, %struct.uncached_pool* %97, i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %103 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %102, i32 0, i32 3
  %104 = call i64 @atomic_read(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %92
  br label %171

107:                                              ; preds = %101
  br label %114

108:                                              ; preds = %80
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @PAL_VISIBILITY_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %171

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %107
  %115 = call i32 (...) @preempt_disable()
  %116 = call i64 @ia64_platform_is(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %121 = call i32 @sn_flush_all_caches(i64 %119, i32 %120)
  br label %129

122:                                              ; preds = %114
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = call i32 @flush_icache_range(i64 %123, i64 %127)
  br label %129

129:                                              ; preds = %122, %118
  %130 = call i32 (...) @local_flush_tlb_all()
  %131 = call i32 (...) @preempt_enable()
  %132 = call i32 (...) @ia64_pal_mc_drain()
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @PAL_STATUS_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %171

137:                                              ; preds = %129
  %138 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %139 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %138, i32 0, i32 3
  %140 = call i32 @atomic_set(i32* %139, i32 0)
  %141 = load i32, i32* @uncached_ipi_mc_drain, align 4
  %142 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %143 = call i32 @smp_call_function(i32 %141, %struct.uncached_pool* %142, i32 1)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %148 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %147, i32 0, i32 3
  %149 = call i64 @atomic_read(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146, %137
  br label %171

152:                                              ; preds = %146
  %153 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %154 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %11, align 8
  %157 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @gen_pool_add(i32 %155, i64 %156, i32 %157, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %171

163:                                              ; preds = %152
  %164 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %165 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %169 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %168, i32 0, i32 1
  %170 = call i32 @mutex_unlock(i32* %169)
  store i32 0, i32* %3, align 4
  br label %196

171:                                              ; preds = %162, %151, %136, %112, %106
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %184, %171
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @IA64_GRANULE_SIZE, align 4
  %175 = load i32, i32* @PAGE_SIZE, align 4
  %176 = sdiv i32 %174, %175
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load %struct.page*, %struct.page** %6, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.page, %struct.page* %179, i64 %181
  %183 = call i32 @ClearPageUncached(%struct.page* %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %172

187:                                              ; preds = %172
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* @IA64_GRANULE_SHIFT, align 8
  %190 = load i64, i64* @PAGE_SHIFT, align 8
  %191 = sub nsw i64 %189, %190
  %192 = call i32 @free_pages(i64 %188, i64 %191)
  %193 = load %struct.uncached_pool*, %struct.uncached_pool** %4, align 8
  %194 = getelementptr inbounds %struct.uncached_pool, %struct.uncached_pool* %193, i32 0, i32 1
  %195 = call i32 @mutex_unlock(i32* %194)
  store i32 -1, i32* %3, align 4
  br label %196

196:                                              ; preds = %187, %163, %53, %36, %26, %19
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.page* @alloc_pages_exact_node(i32, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @SetPageUncached(%struct.page*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @ia64_pal_prefetch_visibility(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_call_function(i32, %struct.uncached_pool*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @ia64_platform_is(i8*) #1

declare dso_local i32 @sn_flush_all_caches(i64, i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @ia64_pal_mc_drain(...) #1

declare dso_local i32 @gen_pool_add(i32, i64, i32, i32) #1

declare dso_local i32 @ClearPageUncached(%struct.page*) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
