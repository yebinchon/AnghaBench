; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_gl_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_gl_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cxgbi_gather_list = type { i32, i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"page %d 0x%p, 0x%p dma mapping err.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.cxgbi_gather_list*)* @ddp_gl_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_gl_map(%struct.pci_dev* %0, %struct.cxgbi_gather_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cxgbi_gather_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.cxgbi_gather_list* %1, %struct.cxgbi_gather_list** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %11 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %18 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %26 = call i32 @dma_map_page(i32* %16, i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %28 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %36 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_mapping_error(i32* %34, i32 %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %14
  %46 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %50 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @log_debug(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %55, %struct.pci_dev* %56)
  br label %64

58:                                               ; preds = %14
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %8

62:                                               ; preds = %8
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %69 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %73 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %76 = call i32 @ddp_gl_unmap(%struct.pci_dev* %74, %struct.cxgbi_gather_list* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %5, align 8
  %79 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %67, %64
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %62
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @ddp_gl_unmap(%struct.pci_dev*, %struct.cxgbi_gather_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
