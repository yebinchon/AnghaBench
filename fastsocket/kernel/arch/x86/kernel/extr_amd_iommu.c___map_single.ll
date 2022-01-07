; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___map_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.amd_iommu = type { i32 }
%struct.dma_ops_domain = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@total_map_requests = common dso_local global i32 0, align 4
@cross_page = common dso_local global i32 0, align 4
@bad_dma_address = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@alloced_io_mem = common dso_local global i32 0, align 4
@amd_iommu_unmap_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.amd_iommu*, %struct.dma_ops_domain*, i64, i64, i32, i32, i32)* @__map_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__map_single(%struct.device* %0, %struct.amd_iommu* %1, %struct.dma_ops_domain* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.amd_iommu*, align 8
  %12 = alloca %struct.dma_ops_domain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.amd_iommu* %1, %struct.amd_iommu** %11, align 8
  store %struct.dma_ops_domain* %2, %struct.dma_ops_domain** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %18, align 8
  store i64 0, i64* %23, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = call i32 @iommu_num_pages(i64 %29, i64 %30, i64 %31)
  store i32 %32, i32* %22, align 4
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = load i64, i64* %13, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* @total_map_requests, align 4
  %37 = call i32 @INC_STATS_COUNTER(i32 %36)
  %38 = load i32, i32* %22, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i32, i32* @cross_page, align 4
  %42 = call i32 @INC_STATS_COUNTER(i32 %41)
  br label %43

43:                                               ; preds = %40, %8
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @get_order(i64 %47)
  %49 = shl i64 1, %48
  %50 = sub i64 %49, 1
  store i64 %50, i64* %23, align 8
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %77, %51
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %55 = load i32, i32* %22, align 4
  %56 = load i64, i64* %23, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i64 @dma_ops_alloc_addresses(%struct.device* %53, %struct.dma_ops_domain* %54, i32 %55, i64 %56, i32 %57)
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* @bad_dma_address, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %52
  %66 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %67 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %70 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %72 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i64 @alloc_new_range(%struct.amd_iommu* %71, %struct.dma_ops_domain* %72, i32 0, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %150

77:                                               ; preds = %65
  br label %52

78:                                               ; preds = %52
  %79 = load i64, i64* %19, align 8
  store i64 %79, i64* %20, align 8
  store i32 0, i32* %24, align 4
  br label %80

80:                                               ; preds = %102, %78
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %22, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %86 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i64 @dma_ops_domain_map(%struct.amd_iommu* %85, %struct.dma_ops_domain* %86, i64 %87, i64 %88, i32 %89)
  store i64 %90, i64* %21, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* @bad_dma_address, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %152

95:                                               ; preds = %84
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = load i64, i64* %20, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %20, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %24, align 4
  br label %80

105:                                              ; preds = %80
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %19, align 8
  %109 = load i32, i32* @alloced_io_mem, align 4
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @ADD_STATS_COUNTER(i32 %109, i64 %110)
  %112 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %113 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  %117 = load i32, i32* @amd_iommu_unmap_flush, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %105
  %121 = phi i1 [ false, %105 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %127 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %128 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @iommu_flush_tlb(%struct.amd_iommu* %126, i32 %130)
  %132 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %133 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %132, i32 0, i32 0
  store i32 0, i32* %133, align 4
  br label %149

134:                                              ; preds = %120
  %135 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %136 = call i32 @iommu_has_npcache(%struct.amd_iommu* %135)
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %141 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %142 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @iommu_flush_pages(%struct.amd_iommu* %140, i32 %144, i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %139, %134
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149, %76
  %151 = load i64, i64* %19, align 8
  store i64 %151, i64* %9, align 8
  br label %175

152:                                              ; preds = %94
  %153 = load i32, i32* %24, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %24, align 4
  br label %155

155:                                              ; preds = %166, %152
  %156 = load i32, i32* %24, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i64, i64* @PAGE_SIZE, align 8
  %160 = load i64, i64* %20, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %20, align 8
  %162 = load %struct.amd_iommu*, %struct.amd_iommu** %11, align 8
  %163 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %164 = load i64, i64* %20, align 8
  %165 = call i32 @dma_ops_domain_unmap(%struct.amd_iommu* %162, %struct.dma_ops_domain* %163, i64 %164)
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %24, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %24, align 4
  br label %155

169:                                              ; preds = %155
  %170 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @dma_ops_free_addresses(%struct.dma_ops_domain* %170, i64 %171, i32 %172)
  %174 = load i64, i64* @bad_dma_address, align 8
  store i64 %174, i64* %9, align 8
  br label %175

175:                                              ; preds = %169, %150
  %176 = load i64, i64* %9, align 8
  ret i64 %176
}

declare dso_local i32 @iommu_num_pages(i64, i64, i64) #1

declare dso_local i32 @INC_STATS_COUNTER(i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @dma_ops_alloc_addresses(%struct.device*, %struct.dma_ops_domain*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @alloc_new_range(%struct.amd_iommu*, %struct.dma_ops_domain*, i32, i32) #1

declare dso_local i64 @dma_ops_domain_map(%struct.amd_iommu*, %struct.dma_ops_domain*, i64, i64, i32) #1

declare dso_local i32 @ADD_STATS_COUNTER(i32, i64) #1

declare dso_local i32 @iommu_flush_tlb(%struct.amd_iommu*, i32) #1

declare dso_local i32 @iommu_has_npcache(%struct.amd_iommu*) #1

declare dso_local i32 @iommu_flush_pages(%struct.amd_iommu*, i32, i64, i64) #1

declare dso_local i32 @dma_ops_domain_unmap(%struct.amd_iommu*, %struct.dma_ops_domain*, i64) #1

declare dso_local i32 @dma_ops_free_addresses(%struct.dma_ops_domain*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
