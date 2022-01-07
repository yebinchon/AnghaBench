; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_pkt_to_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_pkt_to_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ce_pd = type { i32 }
%struct.pd_uinfo = type { i64 }
%struct.scatterlist = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, %struct.ce_pd*, %struct.pd_uinfo*, i64, %struct.scatterlist*)* @crypto4xx_copy_pkt_to_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device* %0, %struct.ce_pd* %1, %struct.pd_uinfo* %2, i64 %3, %struct.scatterlist* %4) #0 {
  %6 = alloca %struct.crypto4xx_device*, align 8
  %7 = alloca %struct.ce_pd*, align 8
  %8 = alloca %struct.pd_uinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.scatterlist*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %6, align 8
  store %struct.ce_pd* %1, %struct.ce_pd** %7, align 8
  store %struct.pd_uinfo* %2, %struct.pd_uinfo** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %10, align 8
  %18 = load %struct.pd_uinfo*, %struct.pd_uinfo** %8, align 8
  %19 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %135, %5
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %136

24:                                               ; preds = %21
  %25 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i64 %26
  store %struct.scatterlist* %27, %struct.scatterlist** %17, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %16, align 8
  %31 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %37 = call i32 @sg_page(%struct.scatterlist* %36)
  %38 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i32 @dma_map_page(i32 %35, i32 %37, i32 %40, i64 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %24
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ule i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi i64 [ %55, %54 ], [ %59, %56 ]
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %66, %60
  %63 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %64 = call i64 @crypto4xx_fill_one_page(%struct.crypto4xx_device* %63, i32* %11, i64* %14, i64* %12, i64* %13, i64* %9)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %62

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %136

71:                                               ; preds = %67
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %135

74:                                               ; preds = %24
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %77 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %78, %79
  %81 = icmp ule i64 %75, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  br label %90

84:                                               ; preds = %74
  %85 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %86 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub i64 %87, %88
  br label %90

90:                                               ; preds = %84, %82
  %91 = phi i64 [ %83, %82 ], [ %89, %84 ]
  store i64 %91, i64* %14, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %93 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  br label %103

101:                                              ; preds = %90
  %102 = load i64, i64* %14, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i64 [ %100, %97 ], [ %102, %101 ]
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %109, %103
  %106 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %107 = call i64 @crypto4xx_fill_one_page(%struct.crypto4xx_device* %106, i32* %11, i64* %14, i64* %12, i64* %13, i64* %9)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %105

110:                                              ; preds = %105
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %136

114:                                              ; preds = %110
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %16, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* %16, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load i64, i64* %14, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %130, %120
  %127 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %6, align 8
  %128 = call i64 @crypto4xx_fill_one_page(%struct.crypto4xx_device* %127, i32* %11, i64* %16, i64* %12, i64* %13, i64* %9)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %126

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %114
  %133 = load i64, i64* %15, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %15, align 8
  br label %135

135:                                              ; preds = %132, %71
  br label %21

136:                                              ; preds = %70, %113, %21
  ret void
}

declare dso_local i32 @dma_map_page(i32, i32, i32, i64, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @crypto4xx_fill_one_page(%struct.crypto4xx_device*, i32*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
