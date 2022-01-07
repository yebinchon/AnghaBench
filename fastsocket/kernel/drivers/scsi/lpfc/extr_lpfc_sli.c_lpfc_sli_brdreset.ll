; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64, %struct.lpfc_sli }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.lpfc_sli = type { i32, i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"0325 Reset HBA Data: x%x x%x\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_INITFF = common dso_local global i32 0, align 4
@LPFC_WARM_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_brdreset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 6
  store %struct.lpfc_sli* %8, %struct.lpfc_sli** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load i32, i32* @LOG_SLI, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCI_COMMAND, align 4
  %37 = call i32 @pci_read_config_word(i32 %35, i32 %36, i32* %5)
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_COMMAND, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %44 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = call i32 @pci_write_config_word(i32 %40, i32 %41, i32 %47)
  %49 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %50 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @HC_INITFF, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @writel(i32 %57, i32 %60)
  %62 = call i32 @mdelay(i32 1)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @readl(i32 %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @writel(i32 0, i32 %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @readl(i32 %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCI_COMMAND, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @pci_write_config_word(i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %114, %1
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %81
  %88 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %88, i32 0, i32 2
  %90 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %90, i64 %92
  store %struct.lpfc_sli_ring* %93, %struct.lpfc_sli_ring** %4, align 8
  %94 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %109 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %87
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %81

117:                                              ; preds = %81
  %118 = load i32, i32* @LPFC_WARM_START, align 4
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  ret i32 0
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
