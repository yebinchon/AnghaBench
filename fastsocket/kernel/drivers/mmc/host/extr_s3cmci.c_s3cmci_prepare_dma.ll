; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i32, i64, i32 }
%struct.mmc_data = type { i32, i32*, i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BOTH_DIR = common dso_local global i32 0, align 4
@S3C2410_DMASRC_MEM = common dso_local global i32 0, align 4
@S3C2410_DMASRC_HW = common dso_local global i32 0, align 4
@S3C2410_DMAOP_FLUSH = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dbg_dma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"enqueue %i: %08x@%u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@S3C2410_DMAOP_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*, %struct.mmc_data*)* @s3cmci_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_prepare_dma(%struct.s3cmci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3cmci_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MMC_DATA_WRITE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BOTH_DIR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @BOTH_DIR, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @S3C2410_DMASRC_MEM, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @S3C2410_DMASRC_HW, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @s3cmci_dma_setup(%struct.s3cmci_host* %24, i32 %32)
  %34 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %35 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @S3C2410_DMAOP_FLUSH, align 4
  %38 = call i32 @s3c2410_dma_ctrl(i32 %36, i32 %37)
  %39 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %40 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mmc_dev(i32 %41)
  %43 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @dma_map_sg(i32 %42, i32* %45, i32 %48, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %131

63:                                               ; preds = %55
  %64 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %65 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %68 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %122, %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %125

73:                                               ; preds = %69
  %74 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %75 = load i32, i32* @dbg_dma, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @sg_dma_address(i32* %82)
  %84 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %85 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @sg_dma_len(i32* %89)
  %91 = call i32 @dbg(%struct.s3cmci_host* %74, i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %83, i32 %90)
  %92 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %93 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %96 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @sg_dma_address(i32* %101)
  %103 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @sg_dma_len(i32* %108)
  %110 = call i32 @s3c2410_dma_enqueue(i32 %94, %struct.s3cmci_host* %95, i32 %102, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %73
  %114 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %115 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S3C2410_DMAOP_FLUSH, align 4
  %118 = call i32 @s3c2410_dma_ctrl(i32 %116, i32 %117)
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %131

121:                                              ; preds = %73
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %69

125:                                              ; preds = %69
  %126 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %127 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @S3C2410_DMAOP_START, align 4
  %130 = call i32 @s3c2410_dma_ctrl(i32 %128, i32 %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %113, %60
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @s3cmci_dma_setup(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @s3c2410_dma_ctrl(i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32 @s3c2410_dma_enqueue(i32, %struct.s3cmci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
