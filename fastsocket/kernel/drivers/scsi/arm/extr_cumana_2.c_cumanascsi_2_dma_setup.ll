; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_pointer = type { i32 }
%struct.cumanascsi2_info = type { i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@ALATCH_DIS_DMA = common dso_local global i32 0, align 4
@CUMANASCSI2_ALATCH = common dso_local global i64 0, align 8
@NO_DMA = common dso_local global i32 0, align 4
@fasdma_real_all = common dso_local global i64 0, align 8
@NR_SG = common dso_local global i32 0, align 4
@DMA_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@ALATCH_DMA_OUT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@ALATCH_DMA_IN = common dso_local global i32 0, align 4
@ALATCH_ENA_DMA = common dso_local global i32 0, align 4
@ALATCH_DIS_BIT32 = common dso_local global i32 0, align 4
@fasdma_pio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Scsi_Host*, %struct.scsi_pointer*, i64, i64)* @cumanascsi_2_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cumanascsi_2_dma_setup(%struct.Scsi_Host* %0, %struct.scsi_pointer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_pointer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cumanascsi2_info*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store %struct.scsi_pointer* %1, %struct.scsi_pointer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %20, %struct.cumanascsi2_info** %10, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %22 = call %struct.device* @scsi_get_device(%struct.Scsi_Host* %21)
  store %struct.device* %22, %struct.device** %11, align 8
  %23 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %24 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @ALATCH_DIS_DMA, align 4
  %29 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %30 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @NO_DMA, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @fasdma_real_all, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.scsi_pointer*, %struct.scsi_pointer** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 512
  br i1 %46, label %47, label %109

47:                                               ; preds = %42, %38
  %48 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %49 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load %struct.scsi_pointer*, %struct.scsi_pointer** %7, align 8
  %53 = load i32, i32* @NR_SG, align 4
  %54 = call i32 @copy_SCp_to_sg(i32* %51, %struct.scsi_pointer* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @DMA_OUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* @DMA_MODE_WRITE, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @ALATCH_DMA_OUT, align 4
  store i32 %61, i32* %16, align 4
  br label %66

62:                                               ; preds = %47
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @DMA_MODE_READ, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* @ALATCH_DMA_IN, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.device*, %struct.device** %11, align 8
  %68 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %69 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @dma_map_sg(%struct.device* %67, i32* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @disable_dma(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %78 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @set_dma_sg(i32 %76, i32* %79, i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %84 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writeb(i32 %82, i64 %87)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @set_dma_mode(i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @enable_dma(i32 %92)
  %94 = load i32, i32* @ALATCH_ENA_DMA, align 4
  %95 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %96 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writeb(i32 %94, i64 %99)
  %101 = load i32, i32* @ALATCH_DIS_BIT32, align 4
  %102 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %10, align 8
  %103 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writeb(i32 %101, i64 %106)
  %108 = load i64, i64* @fasdma_real_all, align 8
  store i64 %108, i64* %5, align 8
  br label %111

109:                                              ; preds = %42, %4
  %110 = load i64, i64* @fasdma_pio, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %109, %66
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.device* @scsi_get_device(%struct.Scsi_Host*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @copy_SCp_to_sg(i32*, %struct.scsi_pointer*, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @set_dma_sg(i32, i32*, i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
