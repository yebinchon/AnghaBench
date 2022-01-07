; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_diag_cmd_data_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_diag_cmd_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabufext = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@BUF_SZ_4K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64I = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabufext* (%struct.lpfc_hba*, %struct.ulp_bde64*, i32, i32)* @diag_cmd_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabufext* @diag_cmd_data_alloc(%struct.lpfc_hba* %0, %struct.ulp_bde64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_dmabufext*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.ulp_bde64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_dmabufext*, align 8
  %11 = alloca %struct.lpfc_dmabufext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.ulp_bde64* %1, %struct.ulp_bde64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.lpfc_dmabufext* null, %struct.lpfc_dmabufext** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %15, align 8
  br label %19

19:                                               ; preds = %105, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %146

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BUF_SZ_4K, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @BUF_SZ_4K, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.lpfc_dmabufext* @kmalloc(i32 32, i32 %31)
  store %struct.lpfc_dmabufext* %32, %struct.lpfc_dmabufext** %11, align 8
  %33 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %34 = icmp ne %struct.lpfc_dmabufext* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %151

36:                                               ; preds = %30
  %37 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %38 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %42 = icmp ne %struct.lpfc_dmabufext* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %45 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %48 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %46, i32* %49)
  br label %53

51:                                               ; preds = %36
  %52 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  store %struct.lpfc_dmabufext* %52, %struct.lpfc_dmabufext** %10, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %58 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i64 @dma_alloc_coherent(i32* %55, i32 %56, i32* %59, i32 %60)
  %62 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %66 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  br label %151

71:                                               ; preds = %53
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %74 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %79 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 0
  %84 = load %struct.pci_dev*, %struct.pci_dev** %83, align 8
  %85 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %86 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %90 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %91 = call i32 @pci_dma_sync_single_for_device(%struct.pci_dev* %84, i32 %88, i32 %89, i32 %90)
  br label %105

92:                                               ; preds = %71
  %93 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %94 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @memset(i32* %97, i32 0, i32 %98)
  %100 = load i64, i64* @BUFF_TYPE_BDE_64I, align 8
  %101 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %102 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i64 %100, i64* %104, align 8
  br label %105

105:                                              ; preds = %92, %77
  %106 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @putPaddrLow(i32 %109)
  %111 = call i8* @le32_to_cpu(i8* %110)
  %112 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %113 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %11, align 8
  %115 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @putPaddrHigh(i32 %117)
  %119 = call i8* @le32_to_cpu(i8* %118)
  %120 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %121 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %125 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  %128 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %129 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @le32_to_cpu(i8* %131)
  %133 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %134 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  %136 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %137 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %136, i32 1
  store %struct.ulp_bde64* %137, %struct.ulp_bde64** %7, align 8
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %19

146:                                              ; preds = %19
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %149 = getelementptr inbounds %struct.lpfc_dmabufext, %struct.lpfc_dmabufext* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  store %struct.lpfc_dmabufext* %150, %struct.lpfc_dmabufext** %5, align 8
  br label %155

151:                                              ; preds = %70, %35
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %153 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %10, align 8
  %154 = call i32 @diag_cmd_data_free(%struct.lpfc_hba* %152, %struct.lpfc_dmabufext* %153)
  store %struct.lpfc_dmabufext* null, %struct.lpfc_dmabufext** %5, align 8
  br label %155

155:                                              ; preds = %151, %146
  %156 = load %struct.lpfc_dmabufext*, %struct.lpfc_dmabufext** %5, align 8
  ret %struct.lpfc_dmabufext* %156
}

declare dso_local %struct.lpfc_dmabufext* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i32 @diag_cmd_data_free(%struct.lpfc_hba*, %struct.lpfc_dmabufext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
