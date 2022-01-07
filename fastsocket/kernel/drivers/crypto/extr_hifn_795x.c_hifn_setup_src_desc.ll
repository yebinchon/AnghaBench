; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_src_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_src_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i32, i64 }
%struct.page = type { i32 }
%struct.hifn_dma = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@HIFN_D_LAST = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_JUMP = common dso_local global i32 0, align 4
@HIFN_FLAG_SRC_BUSY = common dso_local global i32 0, align 4
@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_CTRL_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*, %struct.page*, i32, i32, i32)* @hifn_setup_src_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_src_desc(%struct.hifn_device* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hifn_device*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hifn_dma*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %15 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hifn_dma*
  store %struct.hifn_dma* %17, %struct.hifn_dma** %11, align 8
  %18 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %19 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %25 = call i32 @pci_map_page(i32 %20, %struct.page* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %27 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %32 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %30, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @HIFN_D_VALID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32, i32* @HIFN_D_LAST, align 4
  br label %48

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %42, %49
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %53 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @HIFN_D_SRC_RSIZE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %48
  %64 = load i32, i32* @HIFN_D_VALID, align 4
  %65 = load i32, i32* @HIFN_D_JUMP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @HIFN_D_LAST, align 4
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = or i32 %68, %75
  %77 = call i8* @__cpu_to_le32(i32 %76)
  %78 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %79 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8* %77, i8** %84, align 8
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %74, %48
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %88 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %90 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %94 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HIFN_FLAG_SRC_BUSY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %85
  %100 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %101 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %102 = load i32, i32* @HIFN_DMACSR_S_CTRL_ENA, align 4
  %103 = call i32 @hifn_write_1(%struct.hifn_device* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @HIFN_FLAG_SRC_BUSY, align 4
  %105 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %106 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %99, %85
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @pci_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
