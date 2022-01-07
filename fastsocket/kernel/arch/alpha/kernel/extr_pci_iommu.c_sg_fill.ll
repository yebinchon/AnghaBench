; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_sg_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_sg_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.scatterlist = type { i64, i64, i64 }
%struct.pci_iommu_arena = type { i64, i64* }

@__direct_map_base = common dso_local global i64 0, align 8
@__direct_map_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"    sg_fill: [%p,%lx] -> direct %llx\0A\00", align 1
@alpha_mv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"    sg_fill: [%p,%lx] -> DAC %llx\0A\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"    sg_fill: [%p,%lx] -> sg %llx np %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, %struct.scatterlist*, %struct.pci_iommu_arena*, i64, i32)* @sg_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_fill(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, %struct.pci_iommu_arena* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.pci_iommu_arena*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.scatterlist*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store %struct.pci_iommu_arena* %4, %struct.pci_iommu_arena** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %24 = call i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist* %23)
  store i64 %24, i64* %16, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %17, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %7
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @__direct_map_base, align 8
  %37 = add i64 %35, %36
  %38 = sub i64 %37, 1
  %39 = load i64, i64* %14, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %32
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* @__direct_map_size, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @__direct_map_base, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i32 @__va(i64 %56)
  %58 = load i64, i64* %17, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, i32, i64, i64, ...) @DBGA(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %58, i64 %61)
  store i32 0, i32* %8, align 4
  br label %218

63:                                               ; preds = %41, %32, %7
  %64 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %65 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @alpha_mv, i32 0, i32 0), align 8
  %74 = add i64 %72, %73
  %75 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %76 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @__va(i64 %80)
  %82 = load i64, i64* %17, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i32, i64, i64, ...) @DBGA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %82, i64 %85)
  store i32 0, i32* %8, align 4
  br label %218

87:                                               ; preds = %68, %63
  %88 = load i64, i64* @PAGE_MASK, align 8
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %16, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = call i64 @iommu_num_pages(i64 %92, i64 %93, i64 %94)
  store i64 %95, i64* %20, align 8
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %13, align 8
  %98 = load i64, i64* %20, align 8
  %99 = call i64 @iommu_arena_alloc(%struct.device* %96, %struct.pci_iommu_arena* %97, i64 %98, i32 0)
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* %21, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %87
  %103 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %104 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 -1, i32* %8, align 4
  br label %218

108:                                              ; preds = %102
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %112 = call i32 @sg_classify(%struct.device* %109, %struct.scatterlist* %110, %struct.scatterlist* %111, i32 0)
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %117 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @sg_fill(%struct.device* %113, %struct.scatterlist* %114, %struct.scatterlist* %115, %struct.scatterlist* %116, %struct.pci_iommu_arena* %117, i64 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  br label %218

121:                                              ; preds = %87
  %122 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %13, align 8
  %123 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* @PAGE_SIZE, align 8
  %127 = mul nsw i64 %125, %126
  %128 = add nsw i64 %124, %127
  %129 = load i64, i64* %16, align 8
  %130 = add i64 %128, %129
  %131 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %132 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %135 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @__va(i64 %136)
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %140 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %20, align 8
  %143 = call i32 (i8*, i32, i64, i64, ...) @DBGA(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %137, i64 %138, i64 %141, i64 %142)
  %144 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %13, align 8
  %145 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* %21, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64* %148, i64** %19, align 8
  %149 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %149, %struct.scatterlist** %18, align 8
  br label %150

150:                                              ; preds = %215, %121
  %151 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %152 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %17, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %155 = call i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist* %154)
  store i64 %155, i64* %16, align 8
  br label %156

156:                                              ; preds = %170, %150
  %157 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %158 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %157, i64 1
  %159 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %160 = icmp ult %struct.scatterlist* %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %163 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %162, i64 1
  %164 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, -1
  br label %168

168:                                              ; preds = %161, %156
  %169 = phi i1 [ false, %156 ], [ %167, %161 ]
  br i1 %169, label %170, label %179

170:                                              ; preds = %168
  %171 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %172 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %171, i64 1
  %173 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %17, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %17, align 8
  %177 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %178 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %177, i32 1
  store %struct.scatterlist* %178, %struct.scatterlist** %18, align 8
  br label %156

179:                                              ; preds = %168
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* @PAGE_SIZE, align 8
  %183 = call i64 @iommu_num_pages(i64 %180, i64 %181, i64 %182)
  store i64 %183, i64* %20, align 8
  %184 = load i64, i64* @PAGE_MASK, align 8
  %185 = load i64, i64* %16, align 8
  %186 = and i64 %185, %184
  store i64 %186, i64* %16, align 8
  store i64 0, i64* %22, align 8
  br label %187

187:                                              ; preds = %197, %179
  %188 = load i64, i64* %22, align 8
  %189 = load i64, i64* %20, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load i64, i64* %16, align 8
  %193 = call i32 @mk_iommu_pte(i64 %192)
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %19, align 8
  %196 = getelementptr inbounds i64, i64* %195, i32 1
  store i64* %196, i64** %19, align 8
  store i64 %194, i64* %195, align 8
  br label %197

197:                                              ; preds = %191
  %198 = load i64, i64* %22, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %22, align 8
  %200 = load i64, i64* @PAGE_SIZE, align 8
  %201 = load i64, i64* %16, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %16, align 8
  br label %187

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %206 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %205, i32 1
  store %struct.scatterlist* %206, %struct.scatterlist** %18, align 8
  %207 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %208 = icmp ult %struct.scatterlist* %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %211 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = icmp slt i32 %213, 0
  br label %215

215:                                              ; preds = %209, %204
  %216 = phi i1 [ false, %204 ], [ %214, %209 ]
  br i1 %216, label %150, label %217

217:                                              ; preds = %215
  store i32 1, i32* %8, align 4
  br label %218

218:                                              ; preds = %217, %108, %107, %71, %47
  %219 = load i32, i32* %8, align 4
  ret i32 %219
}

declare dso_local i64 @SG_ENT_PHYS_ADDRESS(%struct.scatterlist*) #1

declare dso_local i32 @DBGA(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @__va(i64) #1

declare dso_local i64 @iommu_num_pages(i64, i64, i64) #1

declare dso_local i64 @iommu_arena_alloc(%struct.device*, %struct.pci_iommu_arena*, i64, i32) #1

declare dso_local i32 @sg_classify(%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @mk_iommu_pte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
