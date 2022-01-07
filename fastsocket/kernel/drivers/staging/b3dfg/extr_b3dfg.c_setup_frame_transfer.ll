; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_setup_frame_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_setup_frame_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i32, i32, i32 }
%struct.b3dfg_buffer = type { i8** }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@B3D_REG_EC220_DMA_ADDR = common dso_local global i32 0, align 4
@B3D_REG_EC220_TRF_SIZE = common dso_local global i32 0, align 4
@B3D_REG_EC220_DMA_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b3dfg_dev*, %struct.b3dfg_buffer*, i32)* @setup_frame_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_frame_transfer(%struct.b3dfg_dev* %0, %struct.b3dfg_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b3dfg_dev*, align 8
  %6 = alloca %struct.b3dfg_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %5, align 8
  store %struct.b3dfg_buffer* %1, %struct.b3dfg_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %12 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.b3dfg_buffer*, %struct.b3dfg_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.b3dfg_buffer, %struct.b3dfg_buffer* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %22 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %27 = call i32 @pci_map_single(i32 %23, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %29 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @pci_dma_mapping_error(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %40 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %43 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %45 = load i32, i32* @B3D_REG_EC220_DMA_ADDR, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %44, i32 %45, i32 %47)
  %49 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %50 = load i32, i32* @B3D_REG_EC220_TRF_SIZE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = lshr i32 %51, 2
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %49, i32 %50, i32 %53)
  %55 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %56 = load i32, i32* @B3D_REG_EC220_DMA_STS, align 4
  %57 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %55, i32 %56, i32 15)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %37, %34
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @pci_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @b3dfg_write32(%struct.b3dfg_dev*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
