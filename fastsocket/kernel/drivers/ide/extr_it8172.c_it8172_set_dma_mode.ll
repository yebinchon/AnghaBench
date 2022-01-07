; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it8172.c_it8172_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it8172.c_it8172_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@__const.it8172_set_dma_mode.mwdma_to_pio = private unnamed_addr constant [3 x i64] [i64 0, i64 3, i64 4], align 16
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @it8172_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8172_set_dma_mode(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i64], align 16
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_dev* @to_pci_dev(i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 4
  %26 = shl i32 3, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 72, i64* %10)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 74, i64* %11)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @XFER_UDMA_0, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %2
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @XFER_UDMA_0, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 %42, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = or i64 %51, %53
  %55 = call i32 @pci_write_config_byte(%struct.pci_dev* %50, i32 72, i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %11, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = or i64 %62, %64
  %66 = call i32 @pci_write_config_byte(%struct.pci_dev* %61, i32 74, i64 %65)
  br label %91

67:                                               ; preds = %2
  %68 = bitcast [3 x i64]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 16 bitcast ([3 x i64]* @__const.it8172_set_dma_mode.mwdma_to_pio to i8*), i64 24, i1 false)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = call i32 @pci_write_config_byte(%struct.pci_dev* %69, i32 72, i64 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %7, align 4
  %79 = xor i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = and i64 %77, %80
  %82 = call i32 @pci_write_config_byte(%struct.pci_dev* %76, i32 74, i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @XFER_MW_DMA_0, align 8
  %85 = sub nsw i64 %83, %84
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @it8172_set_pio_mode(%struct.TYPE_6__* %88, i64 %89)
  br label %91

91:                                               ; preds = %67, %38
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @it8172_set_pio_mode(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
