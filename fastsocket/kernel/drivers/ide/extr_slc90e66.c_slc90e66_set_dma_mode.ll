; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_slc90e66.c_slc90e66_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_slc90e66.c_slc90e66_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@__const.slc90e66_set_dma_mode.mwdma_to_pio = private unnamed_addr constant [3 x i64] [i64 0, i64 3, i64 4], align 16
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @slc90e66_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slc90e66_set_dma_mode(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i64], align 16
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 66, i32 64
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  %36 = shl i32 7, %35
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @pci_read_config_word(%struct.pci_dev* %41, i32 %43, i32* %12)
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 16384
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %50, i32 68, i32* %13)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = call i32 @pci_read_config_word(%struct.pci_dev* %52, i32 72, i32* %14)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = call i32 @pci_read_config_word(%struct.pci_dev* %54, i32 74, i32* %15)
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @XFER_UDMA_0, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @XFER_UDMA_0, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 %62, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %59
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @pci_write_config_word(%struct.pci_dev* %75, i32 72, i32 %78)
  br label %80

80:                                               ; preds = %74, %59
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %9, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @pci_write_config_word(%struct.pci_dev* %87, i32 74, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = call i32 @pci_read_config_word(%struct.pci_dev* %93, i32 74, i32* %15)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @pci_write_config_word(%struct.pci_dev* %95, i32 74, i32 %98)
  br label %100

100:                                              ; preds = %86, %80
  br label %141

101:                                              ; preds = %2
  %102 = bitcast [3 x i64]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %102, i8* align 16 bitcast ([3 x i64]* @__const.slc90e66_set_dma_mode.mwdma_to_pio to i8*), i64 24, i1 false)
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = call i32 @pci_write_config_word(%struct.pci_dev* %108, i32 72, i32 %112)
  br label %114

114:                                              ; preds = %107, %101
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %9, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = call i32 @pci_write_config_word(%struct.pci_dev* %120, i32 74, i32 %124)
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @XFER_MW_DMA_0, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @XFER_MW_DMA_0, align 8
  %133 = sub nsw i64 %131, %132
  %134 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %17, align 8
  br label %137

136:                                              ; preds = %126
  store i64 2, i64* %17, align 8
  br label %137

137:                                              ; preds = %136, %130
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = load i64, i64* %17, align 8
  %140 = call i32 @slc90e66_set_pio_mode(%struct.TYPE_6__* %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %100
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slc90e66_set_pio_mode(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
