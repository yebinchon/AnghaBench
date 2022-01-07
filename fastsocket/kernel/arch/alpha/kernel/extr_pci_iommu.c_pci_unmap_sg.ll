; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_pci_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_pci_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_controller*, i32, i32)* }
%struct.pci_controller = type { %struct.pci_iommu_arena*, %struct.pci_iommu_arena* }
%struct.pci_iommu_arena = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32, %struct.pci_controller* }
%struct.scatterlist = type { i32, i64 }

@PCI_DMA_NONE = common dso_local global i32 0, align 4
@alpha_mv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pci_isa_hose = common dso_local global %struct.pci_controller* null, align 8
@ISA_DMA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"    (%ld) DAC [%llx,%zx]\0A\00", align 1
@__direct_map_base = common dso_local global i32 0, align 4
@__direct_map_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"    (%ld) direct [%llx,%zx]\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"    (%ld) sg [%llx,%zx]\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"pci_unmap_sg: %ld entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_unmap_sg(%struct.pci_dev* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca %struct.pci_iommu_arena*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PCI_DMA_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i32 (%struct.pci_controller*, i32, i32)*, i32 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @alpha_mv, i32 0, i32 0), align 8
  %28 = icmp ne i32 (%struct.pci_controller*, i32, i32)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %220

30:                                               ; preds = %26
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load %struct.pci_controller*, %struct.pci_controller** %35, align 8
  br label %39

37:                                               ; preds = %30
  %38 = load %struct.pci_controller*, %struct.pci_controller** @pci_isa_hose, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi %struct.pci_controller* [ %36, %33 ], [ %38, %37 ]
  store %struct.pci_controller* %40, %struct.pci_controller** %10, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @ISA_DMA_MASK, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %46, %43 ], [ %48, %47 ]
  store i32 %50, i32* %13, align 4
  %51 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %52 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %51, i32 0, i32 1
  %53 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %52, align 8
  store %struct.pci_iommu_arena* %53, %struct.pci_iommu_arena** %11, align 8
  %54 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %55 = icmp ne %struct.pci_iommu_arena* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %58 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %61 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %56, %49
  %68 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %69 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %68, i32 0, i32 0
  %70 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %69, align 8
  store %struct.pci_iommu_arena* %70, %struct.pci_iommu_arena** %11, align 8
  br label %71

71:                                               ; preds = %67, %56
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %72 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %73 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %72, i32 0, i32 3
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %76, i64 %78
  store %struct.scatterlist* %79, %struct.scatterlist** %12, align 8
  br label %80

80:                                               ; preds = %183, %71
  %81 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %82 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %83 = icmp ult %struct.scatterlist* %81, %82
  br i1 %83, label %84, label %186

84:                                               ; preds = %80
  %85 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %86 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %16, align 4
  %88 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %17, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %186

94:                                               ; preds = %84
  %95 = load i32, i32* %16, align 4
  %96 = icmp ugt i32 %95, -1
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %100 = ptrtoint %struct.scatterlist* %98 to i64
  %101 = ptrtoint %struct.scatterlist* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 16
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %16, align 4
  %109 = load i64, i64* %17, align 8
  %110 = call i32 (i8*, i32, ...) @DBGA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i64 %109)
  br label %183

111:                                              ; preds = %94
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @__direct_map_base, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @__direct_map_base, align 4
  %118 = load i32, i32* @__direct_map_size, align 4
  %119 = add nsw i32 %117, %118
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %123 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %124 = ptrtoint %struct.scatterlist* %122 to i64
  %125 = ptrtoint %struct.scatterlist* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 16
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %16, align 4
  %133 = load i64, i64* %17, align 8
  %134 = call i32 (i8*, i32, ...) @DBGA(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i64 %133)
  br label %183

135:                                              ; preds = %115, %111
  %136 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %137 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %138 = ptrtoint %struct.scatterlist* %136 to i64
  %139 = ptrtoint %struct.scatterlist* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 16
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %16, align 4
  %147 = load i64, i64* %17, align 8
  %148 = call i32 (i8*, i32, ...) @DBGA(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i64 %147)
  %149 = load i32, i32* %16, align 4
  %150 = load i64, i64* %17, align 8
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = call i64 @iommu_num_pages(i32 %149, i64 %150, i32 %151)
  store i64 %152, i64* %18, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %155 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %153, %156
  %158 = load i32, i32* @PAGE_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %19, align 8
  %161 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %18, align 8
  %164 = call i32 @iommu_arena_free(%struct.pci_iommu_arena* %161, i64 %162, i64 %163)
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %17, align 8
  %168 = add i64 %166, %167
  %169 = sub i64 %168, 1
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %135
  %175 = load i32, i32* %16, align 4
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %174, %135
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %20, align 4
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %180, %176
  br label %183

183:                                              ; preds = %182, %121, %97
  %184 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %185 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %184, i32 1
  store %struct.scatterlist* %185, %struct.scatterlist** %6, align 8
  br label %80

186:                                              ; preds = %93, %80
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %189 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %187, %190
  %192 = load i32, i32* @PAGE_SHIFT, align 4
  %193 = ashr i32 %191, %192
  %194 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %195 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp sge i32 %193, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %186
  %199 = load i32 (%struct.pci_controller*, i32, i32)*, i32 (%struct.pci_controller*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @alpha_mv, i32 0, i32 0), align 8
  %200 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i32 %199(%struct.pci_controller* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %198, %186
  %205 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %11, align 8
  %206 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %205, i32 0, i32 3
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %212 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %213 = ptrtoint %struct.scatterlist* %211 to i64
  %214 = ptrtoint %struct.scatterlist* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 16
  %217 = sub nsw i64 %210, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 (i8*, i32, ...) @DBGA(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %204, %29
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBGA(i8*, i32, ...) #1

declare dso_local i64 @iommu_num_pages(i32, i64, i32) #1

declare dso_local i32 @iommu_arena_free(%struct.pci_iommu_arena*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
