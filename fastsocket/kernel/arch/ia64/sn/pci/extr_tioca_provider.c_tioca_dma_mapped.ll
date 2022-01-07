; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_tioca_provider.c_tioca_dma_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_tioca_provider.c_tioca_dma_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.tioca_common = type { i64 }
%struct.tioca_kernel = type { i32, i32, i32, i8**, i32, i64, i8* }
%struct.tioca_dmamap = type { i32, i32, i32, i64 }
%struct.pcidev_info = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i64, i64)* @tioca_dma_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tioca_dma_mapped(%struct.pci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.tioca_common*, align 8
  %18 = alloca %struct.tioca_kernel*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.tioca_dmamap*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.pcidev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %19, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev* %24)
  store %struct.pcidev_info* %25, %struct.pcidev_info** %23, align 8
  %26 = load %struct.pcidev_info*, %struct.pcidev_info** %23, align 8
  %27 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.tioca_common*
  store %struct.tioca_common* %29, %struct.tioca_common** %17, align 8
  %30 = load %struct.tioca_common*, %struct.tioca_common** %17, align 8
  %31 = getelementptr inbounds %struct.tioca_common, %struct.tioca_common* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.tioca_kernel*
  store %struct.tioca_kernel* %33, %struct.tioca_kernel** %18, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @PHYS_TO_TIODMA(i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %206

39:                                               ; preds = %3
  %40 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %41 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %40, i32 0, i32 2
  %42 = load i64, i64* %22, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.tioca_dmamap* @kzalloc(i32 24, i32 %44)
  store %struct.tioca_dmamap* %45, %struct.tioca_dmamap** %20, align 8
  %46 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %47 = icmp ne %struct.tioca_dmamap* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %200

49:                                               ; preds = %39
  %50 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %51 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ffs(i32 %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = sub i64 %58, 1
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %60, %62
  %64 = load i64, i64* %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = lshr i64 %64, %66
  %68 = sub i64 %63, %67
  %69 = add i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %72 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %21, align 8
  %74 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %75 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %21, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @find_first_zero_bit(i8* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %95, %49
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i8*, i8** %21, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @find_next_bit(i8* %85, i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %100

95:                                               ; preds = %84
  %96 = load i8*, i8** %21, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @find_next_zero_bit(i8* %96, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  br label %80

100:                                              ; preds = %94, %80
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %106 = call i32 @kfree(%struct.tioca_dmamap* %105)
  br label %200

107:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i8*, i8** %21, align 8
  %117 = call i32 @set_bit(i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %108

121:                                              ; preds = %108
  %122 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %123 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  store i64 %129, i64* %19, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %132 = getelementptr inbounds %struct.tioca_dmamap, %struct.tioca_dmamap* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %135 = getelementptr inbounds %struct.tioca_dmamap, %struct.tioca_dmamap* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %138 = getelementptr inbounds %struct.tioca_dmamap, %struct.tioca_dmamap* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.tioca_dmamap*, %struct.tioca_dmamap** %20, align 8
  %140 = getelementptr inbounds %struct.tioca_dmamap, %struct.tioca_dmamap* %139, i32 0, i32 2
  %141 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %142 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %141, i32 0, i32 4
  %143 = call i32 @list_add(i32* %140, i32* %142)
  %144 = load i64, i64* %15, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = urem i64 %144, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %177

149:                                              ; preds = %121
  %150 = load i64, i64* %15, align 8
  %151 = call i8* @tioca_paddr_to_gart(i64 %150)
  %152 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %153 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %152, i32 0, i32 3
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = and i64 %158, %161
  %163 = load i64, i64* %19, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %19, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %165, 1
  %167 = xor i32 %166, -1
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %15, align 8
  %170 = and i64 %169, %168
  store i64 %170, i64* %15, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %15, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %15, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %149, %121
  br label %178

178:                                              ; preds = %182, %177
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %16, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %178
  %183 = load i64, i64* %15, align 8
  %184 = call i8* @tioca_paddr_to_gart(i64 %183)
  %185 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %186 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %185, i32 0, i32 3
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %15, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %15, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %178

197:                                              ; preds = %178
  %198 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %199 = call i32 @tioca_tlbflush(%struct.tioca_kernel* %198)
  br label %200

200:                                              ; preds = %197, %104, %48
  %201 = load %struct.tioca_kernel*, %struct.tioca_kernel** %18, align 8
  %202 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %201, i32 0, i32 2
  %203 = load i64, i64* %22, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  %205 = load i64, i64* %19, align 8
  store i64 %205, i64* %4, align 8
  br label %206

206:                                              ; preds = %200, %38
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

declare dso_local %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i64 @PHYS_TO_TIODMA(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tioca_dmamap* @kzalloc(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @find_first_zero_bit(i8*, i32) #1

declare dso_local i32 @find_next_bit(i8*, i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.tioca_dmamap*) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i8* @tioca_paddr_to_gart(i64) #1

declare dso_local i32 @tioca_tlbflush(%struct.tioca_kernel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
