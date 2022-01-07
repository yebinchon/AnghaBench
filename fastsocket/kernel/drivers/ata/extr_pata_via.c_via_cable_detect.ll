; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@VIA_SATA_PATA = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4
@VIA_UDMA = common dso_local global i32 0, align 4
@VIA_UDMA_66 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@VIA_UDMA_100 = common dso_local global i32 0, align 4
@ATA_CBL_PATA_UNK = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @via_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.via_isa_bridge*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %10, align 8
  store %struct.via_isa_bridge* %11, %struct.via_isa_bridge** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i64 @via_cable_override(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %22, i32* %2, align 4
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VIA_SATA_PATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ATA_CBL_SATA, align 4
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %30, %23
  %38 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %39 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VIA_UDMA, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @VIA_UDMA_66, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %46, i32* %2, align 4
  br label %85

47:                                               ; preds = %37
  %48 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %4, align 8
  %49 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VIA_UDMA, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @VIA_UDMA_100, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ATA_CBL_PATA_UNK, align 4
  store i32 %56, i32* %2, align 4
  br label %85

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = call i32 @pci_read_config_dword(%struct.pci_dev* %59, i32 80, i32* %6)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 16, %64
  %66 = ashr i32 269484032, %65
  %67 = and i32 %61, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %70, i32* %2, align 4
  br label %85

71:                                               ; preds = %58
  %72 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %73 = call i64 @ata_acpi_init_gtm(%struct.ata_port* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %77 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %78 = call i64 @ata_acpi_init_gtm(%struct.ata_port* %77)
  %79 = call i64 @ata_acpi_cbl_80wire(%struct.ata_port* %76, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %75, %71
  %84 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %81, %69, %55, %45, %35, %21
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @via_cable_override(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ata_acpi_init_gtm(%struct.ata_port*) #1

declare dso_local i64 @ata_acpi_cbl_80wire(%struct.ata_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
